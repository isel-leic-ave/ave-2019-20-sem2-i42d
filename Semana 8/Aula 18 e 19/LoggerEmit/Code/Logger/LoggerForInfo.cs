using System;
namespace LoggerEmit.Code.Logger
{
    //
    // Classes hard-coded ou dummy (auxiliar)
    //
    public class LoggerForInfo : ILog
    {
        public void Log(object obj, int level)
        {
            // Assumimos que obj e' sempre um Info
            Info info = (Info)obj;
            Console.Write("Info { ");
            Console.Write("a: {0};", info.a);
            Console.Write(" b: {0};", info.b);

            if (3 <= level) {
                Console.Write(" c: {0};", info.c);
            }
            Console.WriteLine(" }");
        }
    }
}

/*

Info { a: 1; b: 2; }
Info { a: 1; b: 2; c: 3; }
User { name: Joao Trindade; }
User { username: jtrindade; name: Joao Trindade; }

 */