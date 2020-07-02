using System;
using System.Collections.Generic;

namespace Exercicios.Exes
{
    public static class Extensions
    {
        public static IEnumerable<IEnumerable<T>> Chunk<T>(this IEnumerable<T> seq, Predicate<T> pred)
        {
            IEnumerator<T> enumerator = seq.GetEnumerator();
            while (enumerator.MoveNext())
            {
                yield return BuildSeq(enumerator, pred);
            }
        }

        public static IEnumerable<T> BuildSeq<T>(IEnumerator<T> enumerator, Predicate<T> pred)
        {
            //do
            //{
            //    if (!pred(enumerator.Current))
            //        yield return enumerator.Current;
            //    else
            //    {
            //        yield return enumerator.Current; // Terminates current subsequence
            //        break;
            //    }
            //}
            //while (enumerator.MoveNext());

            // Simplified
            do
            {
                yield return enumerator.Current;
            }
            while (!pred(enumerator.Current) && enumerator.MoveNext());
        }

    }



    public class Exe14
    {
        public static void Main()
        {
            int[] numbers = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
            IEnumerable<IEnumerable<int>> chunked = numbers.Chunk(v => v % 2 == 0);
            foreach (IEnumerable<int> s in chunked)
            {
                Console.WriteLine(String.Join(",", s));
            }
// Output:
// 1,2
// 3,4
// 5,6
// 7,8
// 9,10        
        }
    }

}
