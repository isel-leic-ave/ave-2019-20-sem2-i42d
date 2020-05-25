using System;
namespace DelegatesIntro
{
    // Define a predicate delegate (Note: this delegate already exists in the library)
    public delegate bool Predicate<T>(T elem);

    public class Filter<T>
    {
        // The Count method is not a generic method; instead, it uses
        // generic arguments.
        // In order to be generic, it must have a generic parameter type,
        // e.g., 
        // public static int Count<T1>(T1[] arr, Predicate<T1> pred)
        //
        public static int Count(T[] arr, Predicate<T> pred) {
            int c = 0;
            foreach (T item in arr)
            {
                //if (pred(item))
                // Or:
                if (pred.Invoke(item))
                {
                    ++c;
                }
            }
            return c;
        }
    }

    public class App
    {
        public static bool isEven(int elem) {
            return elem % 2 == 0;
        }
        public static void Main1()
        {
            int[] arr = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
            //int c = Filter<int>.Count(arr, (int elem) => elem % 2 == 0);
            int c = Filter<int>.Count(arr, elem => elem % 2 == 0);
            //int c = Filter<int>.Count(arr, (elem) => { return elem % 2 == 0; });

            Console.WriteLine("Count even elems with lambda, c = {0}", c);
            Predicate<int> pred = new Predicate<int>(App.isEven);
            // Delegates have a single constructor: void .ctor(object, native int)
            // first parameter = "this" of method
            // second parameter = token IL of method
            // In C#, "native int" is represented by System.IntPtr
            // Or:
            //Predicate<int> pred = App.isEven;
            int c1 = Filter<int>.Count(arr, pred);
            Console.WriteLine("Count even elems with delegate, c1 = {0}", c1);
        }
    }
}








