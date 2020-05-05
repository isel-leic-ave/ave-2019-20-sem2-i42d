using System;

namespace NLogExample
{
    class MainClass
    {
        // Logger
        private static NLog.Logger logger = NLog.LogManager.GetCurrentClassLogger();

        public static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            logger.Debug("Hello World!");
        }
    }
}

/*
 * Notes:
 * - Edit NLog.config by adding entries in "targets" e "rules" 
 * - Set Build Action = Content and 
 *      "Copy to Output Directory" or  
 *      "Copy to Output Directory = Copy if newer"
 * 
 */