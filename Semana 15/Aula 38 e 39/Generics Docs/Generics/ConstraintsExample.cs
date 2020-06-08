using System;
namespace Generics
{
    public class MyBase {
        public virtual int M(char c) {
            Console.WriteLine("M {0}", c);
            return 0;
        }
    }

    public class Dummy<T> where T : MyBase, IComparable<T>, new()
    {
        public Dummy(T obj)
        {
            //obj....; // Sem restricoes where, apenas metodos de Object sao
            // apresentados

            // Com restricoes where (new())
            T obj1 = new T(); // OK, posso invocar ctor()
            //obj1. ...; // apenas metodos de Object sao apresentados

            // Com restricoes where (IComparable<T>, new())
            T obj2 = new T(); // OK, posso invocar ctor()
            int a = obj2.CompareTo(obj1); // Ja' e' possivel invocar CompareTo de IComparable<T>
            // e tambem metodos de Object sao apresentados

            // Com restricoes where (MyBase, IComparable<T>, new())
            obj2.M('x');
        }
    }

    public class Derived : MyBase, IComparable<Derived>
    {
        public int CompareTo(Derived other)
        {
            return 0;
        }
    }

    class Test {
        public static void Main() {
            Derived derived = new Derived();
            Dummy<Derived> d = new Dummy<Derived>(derived);

        }
    }

}






























