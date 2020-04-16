using System;
namespace LoggerEmit.log.Log
{
    //
    // Logger hard-coded para o tipo Info e assumindo que os custom 
    // attributes nao sao alterados no futuro
    //
    public class LoggerForInfo : ILog
    {
        public void Log(object obj, int level)
        {
            // Admitindo que obj e' sempre do tipo Info
            Info info = (Info)obj;
            Console.Write("Info { ");

            // Console.Write("{0}: {1}; ", fi.Name, fi.GetValue(obj));
            Console.Write("a: {0}; ", info.a);
            Console.Write("b: {0}; ", info.b);

            if (3 <= level)
            {
                Console.Write("c: {0}; ", info.c);
            }
            
            Console.WriteLine('}');
            
        }
    }
}
/*
Info { a: 1; b: 2; }
Info { a: 1; b: 2; c: 3; }
User { name: Joao Trindade; }
User { username: jtrindade; name: Joao Trindade; }

 */