using System;
using System.Collections.Generic;
//using System.Linq;

namespace LazyEnumerators
{
    public static class Extensions
    {
        // Extension method of IEnumerable<U>
        // NOTE: this and other extensions already exist in LINQ (Language
        // Integrated Query) namespace
        public static IEnumerable<U> Select<T, U>(this IEnumerable<T> seq,
                                        Converter<T, U> selector)
        {
            foreach (T t in seq) 
                yield return selector(t);
        }

        public static int Count(this string str) {
            return str.Length;
        }

        public static T First<T>(this IEnumerable<T> seq)
        {
            IEnumerator<T> enumerator = seq.GetEnumerator();
            if (enumerator.MoveNext())
                return enumerator.Current;
            else
                throw new ArgumentNullException("Empty seq");
        }
        public static IEnumerable<T> Where<T>(this IEnumerable<T> seq,
                                              Predicate<T> predicate)
        {
            foreach (T t in seq) {
                if (predicate(t))
                {
                    yield return t;
                }
            }
        }


    }

    public class App {
        public static void Main1() {
            string s = "Ola";
            Console.WriteLine(s.Count());

            // students refer to an array of objects of an anonymous type
            // containing public properties Name and Nr
            var students = new [] { 
                new { Name = "Luis", Nr = 123 }, // Creates an anonymous type
                new { Name = "Ana", Nr = 456 },
                new { Name = "Jose", Nr = 789 }
            };
            Console.WriteLine(students.GetType());

            // var is also used with generics
            var list = new List<int>();
            Console.WriteLine(list.GetType());

            var enum1 = students.Select(st => new { StudName = st.Name });
            foreach (var item in enum1)
            {
                Console.WriteLine(item.StudName);
            }
        }

        public static void Main()
        {
            // students refer to an array of objects of an anonymous type
            // containing public properties Name and Nr
            var students = new[] {
                new { Name = "Luis", Nr = 123 }, // Creates an anonymous type
                new { Name = "Ana", Nr = 456 },
                new { Name = "Jose", Nr = 789 }
            };
            var first = students
                .Select(st => new { StudName = st.Name })
                .First();
            Console.WriteLine(first.StudName);

            var enum1 = students
                .Select(st => new { StudName = st.Name })
                .Where(stu => stu.StudName.Length <= 3);
            foreach (var item in enum1)
            {
                Console.WriteLine(item.StudName);
            }
            /*
             enum1 = objeto do tipo X (devolvida pelo Where) --> cujo MoveNext invoca MoveNext de
             X1 (objeto enumerable devolvido pelo Select)

            Por isso enum1.MoveNext() = X::MoveNext() que executa X1::MoveNext()
             */ 

        }
    }

}





























