using System;
using System.Collections.Generic;

namespace Enumerator
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            var i = 5; // variable of type int (type implicitly defined)
            // i = "ola"; // Error, cannot convert int to string 

            List<int> arr = new List<int>(new int[] { 1, 2, 3, 4, 5 });
            foreach (var item in arr)
            {
                Console.WriteLine(item);
            }
            
            //
            // SEE IL in folder "Generated IL"
            // 

        }
    }
}
