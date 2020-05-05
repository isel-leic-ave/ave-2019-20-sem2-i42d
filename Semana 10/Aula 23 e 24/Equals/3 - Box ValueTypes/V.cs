using System;
namespace Equals.BoxValueTypes
{
    // A struct is always sealed
    public struct V
    {
        int x, y;

        // Auxiliary method used in order to avoid boxes
        public bool Equals(V v) {
            return x == v.x & y == v.y;
        }

        public override bool Equals(object o)
        {
            if (o is V)
                return Equals((V)o); // unbox
            else
                return false;
        }

        public override String ToString()
        {
            return "Value type V";
        }
    }


    public class Test {
        public static void Main() {
            V v1 = new V();
            v1.Equals(v1); // sem box no this nem no parametro => invoca V::Equals(V)

            Console.WriteLine(v1); // box
            Console.WriteLine(v1.ToString()); // sem box, admitindo que ToString() 
            // esta redefinido em V

            object o = v1; // box
            Console.WriteLine(o.ToString()); // invoca BoxedTypeV::ToString() <=> V::ToString()


        }
    }
}
