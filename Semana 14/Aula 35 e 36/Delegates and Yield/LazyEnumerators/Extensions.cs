using System;
using System.Collections.Generic;

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
    }

    public class App {
        public static void Main1() {
            string s = "Ola";
            Console.WriteLine(s.Count()); // Extension methods are static methods
            // which can be called as instance methods

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
    }

}
