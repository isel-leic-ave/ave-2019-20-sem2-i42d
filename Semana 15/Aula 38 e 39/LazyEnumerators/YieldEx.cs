using System;
using System.Collections.Generic;

namespace LazyEnumerators
{
    public class YieldEx
    {
        public static IEnumerator<int> Until()
        {
            for (int i = 0; ; ++i)
            {
                yield return i;
            }
        }
        public static void Main1() {
            Until();
            Console.WriteLine("End...");

            for (IEnumerator<int> ie = Until(); ie.MoveNext(); )
            {
                Console.Write(ie.Current + " ");
            }
        }
    }
}
