// 
// Adapted from original code by
// Author: João Trindade
//

/*
Consideracoes a ter nos testes de desempenho:

- Evitar I/O (wireless ligado, etc.)
- Evitar executar outras aplicacoes (.Net ou nao)
  * Caso sejam apps .Net, os efeitos no AVE por parte do Jitter ou GC
    podem ser significativos 
  * Capacidade de processamento influenciada pelas varias execucoes
    a decorrer em paralelo
- Executar varias iteracoes que permitam ao AVE fazer otimizacoes
- Compilar em modo Release  

*/

using System;

// public delegate AssociatedMethodReturnType DelegateName(AssociatedMethodParameters)
public delegate Object BenchmarkMethod();

public static class NBench
{
    private class TimeReg
    {
        public long ops;
        public long time;
    }
	
	public static void Benchmark(BenchmarkMethod method, String title, long time, long numWarmups, long numIters)
	{
        Console.WriteLine("\n:: BENCHMARKING {0} ::",  title);
        long numOps = OutterBenchmark(method, time, numWarmups, numIters);
        Console.WriteLine("\nResult: {0} ops/s\t{1,8:0.00} ns\n", numOps, (1.0/numOps)*1.0e9);
	}

    private static long OutterBenchmark(BenchmarkMethod method, long time, long warmups, long iters)
    {
        TimeReg timeReg = new TimeReg();
        Round(method, time, warmups, timeReg, "# Warmup ");
        return Round(method, time, iters, timeReg, "");
    }

	private static long Round(BenchmarkMethod method, long time, long iters, TimeReg timeReg, string msg) 
	{
		long bestNumOps = 0;
		long numOps;
        for (long i = 1; i <= iters; ++i) {
            Console.Write("{0}Iteration {1,2}: ", msg, i);
			InnerBenchmark(method, time, timeReg);
            numOps = (long)((((double)timeReg.ops)/timeReg.time)*1000); // numOps = n. operacoes /s = frequencia

            if (numOps > bestNumOps) 
            {
				bestNumOps = numOps;
			}
            // periodo = 1 / frequencia
            // periodo (nanosegundos) = (1 / frequencia) * 10^9
            Console.WriteLine("{0} ops/s\t{1,8:0.00} ns", numOps, (1.0/numOps)*1.0e9);
            Collect(); 
            // No final de cada iteracao existe um GC.Collect() para limpar objetos temporarios
            // que foram criados durante a iteracao.
            // Usado para evitar que ocorra um GC.Collect() a meio das proximas
            // iteracoes, o que poderia influenciar o tempo do teste de desempenho
		}
		return bestNumOps;
	}

    private static void InnerBenchmark(BenchmarkMethod method, long time, TimeReg timeReg)
    {
        long ops = 0;
        long begTime = Environment.TickCount, curTime, endTime = begTime + time;
        do {
            method.Invoke(); method(); method(); method(); method(); method(); method(); method(); 
			method(); method(); method(); method(); method(); method(); method(); method(); 
			method(); method(); method(); method(); method(); method(); method(); method(); 
			method(); method(); method(); method(); method(); method(); method(); method(); 
			ops += 32;  // Usado para diminuir a frequencia com que Environment.TickCount e' chamado

            /*
            method();
            ops++;
            */
            
            curTime = Environment.TickCount; // Environment.TickCount devolve tempo decorrido em milisegundos
		} while (curTime < endTime);
        timeReg.ops = ops;
        timeReg.time = curTime - begTime;
	}
	
	public static void Collect()
	{
		GC.Collect();
	}
}
