using System;
namespace Exercicios.Exes
{
    //Escreva em IL o código do construtor e do método InvokeAll da classe B.

    delegate object Func(int p);

    abstract class A
    {
        protected Func Handlers { get; set; }
        protected int MaxNumHandlers { get; set; }
        protected A(int maxNumHandlers)
        {
            this.MaxNumHandlers = maxNumHandlers;
        }
    }
    class B : A
    {
        public B() : base(10) { 
            Handlers = Bundle; 

            /*
            // Chamada ao base ctor nao envolve newobj mas sim um call
            // Quando se faz um new dum reference type e' que e' feito um newobj
                ldarg.0 // this
                ldc.i4 10
                call instance void A::ctor(int)
                // Handlers = Bundle; 
                
                 ldarg.0 // this
                // Create delegate
                ldarg.0 // this
                ldftn instanc object B::Bundle(int)
                newobj instance void Func::ctor(object, native int)
                 // Call ao metodo set_Handlers
                 call instance void A::set_Handlers(Func)
                 ret
             */

        }

        private object Bundle(int p) { return p; }

        public object InvokeAll(object parameter)
        {
            return Handlers((int)parameter);
            /*
             

            ldarg.0 // This
            // Call ao metodo get_Handlers
             call instance Func A::get_Handlers()
             ldarg.1
             unbox_any Int32
             // Invoke ao delegate
             callvirt instance object Func::Invoke(int32)
             ret
             */ 
        }
    }
}
