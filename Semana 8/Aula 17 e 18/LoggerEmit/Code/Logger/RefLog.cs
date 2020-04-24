using System;
using System.Reflection;

public class RefLog : ILog 
{
	public void Log(Object obj, int level)
	{
		Console.Write("{0} {{ ", obj.GetType().Name);
		foreach (FieldInfo fi in obj.GetType().GetTypeInfo().GetFields(LogOps.ALL_INSTANCE)) {
			if (LogOps.CanLog(fi)) {
				if (LogOps.GetLogLevel(fi) <= level) { 
					Console.Write("{0}: {1}; ", fi.Name, fi.GetValue(obj));
				}
			}
		}
		Console.WriteLine('}');
	}
}

// OTIMIZACAO:
// FAZER EXEMPLO HARD-CODED, PARA CADA TIPO (Info, User, ...) EM IL. COMO?
//
//
// Exemplo Hard-coded
// 1. Fazer exemplo hard-coded em C#
// 2. Compilar em Modo Release
// 3. ILDASM
// 4. Traduzir para chamadas ...Emit o programa IL hard-coded
//



// TPC: Objeto Logger em C# hard-coded para o Info e User
// Classe LoggerForUser e LoggerForInfo
//



