using System;

internal delegate void Feedback(Int32 value);

public sealed class Program
{
    int i;

    // Se mudar o metodo para static o metodo anonimo passa a ser static
    // e nao pode aceder (capturar) campos de instancia
    //
    //private static void AnonymousDelegateDemo()
    private void AnonymousDelegateDemo(int parameter)
    {
        Console.WriteLine("----- Anonymous Delegate Demo -----");

        int loc = 10;

        // Descomentar se usar metodo de instancia
        // Captura de variaveis de instancia
        //
        Counter(1, 3, (int value) =>
        {
            Console.WriteLine("this.i = " + this.i + ", Item = " + value.ToString());
            Console.WriteLine("loc = " + loc);
            Console.WriteLine("parameter = " + parameter);
        });

        // Descomentar se usar metodo estatico
        // Sem captura de campos de instancia
        //Counter(1, 3, delegate (int value)
        //{
        //    //Console.WriteLine("this.i = " + this.i + ", Item = " + value.ToString());
        //    Console.WriteLine("Item = " + value.ToString());
            //Console.WriteLine("loc = " + loc);
            //Console.WriteLine("parameter = " + parameter);
        //});

        Console.WriteLine();
    }
    /*
     In order to capture the context (this.i, loc, and parameter),
     the above line generates an auxiliary class (nested class), e.g., 
    public sealed class Program {
        int i;
        //...
        
        public class XPTO {
            public int loc;
            public int parameter;
            public Program refThis;

            public void method1(int value) {
                Console.WriteLine("this.i = " + this.refThis.i + ", Item = " + value.ToString());
                Console.WriteLine("loc = " + loc);
                Console.WriteLine("parameter = " + parameter);   
            }
         }

        private void AnonymousDelegateDemo(int parameter)
        {
            int loc = 10;
            //...
            XPTO xpto = new XPTO();
            // Capture variable "this"
            xpto.refThis = this;
            xpto.loc = loc;
            xpto.parameter = parameter;
            Action lambda1 = xpto.method1; 
            Counter(1, 3, lambda1);
        }
     */ 



    private static void Counter(Int32 from, Int32 to, Feedback fb)
    {
        if (fb == null) return;

        // If any callbacks are specified, call them
        for (Int32 val = from; val <= to; val++)
            fb(val);
        // fb.Invoke(val);
    }



    public static void Main1()
    {
        Program p = new Program();
        p.AnonymousDelegateDemo(99);

        // Caso o metodo seja static
        //Program.AnonymousDelegateDemo(99);
    }
}




