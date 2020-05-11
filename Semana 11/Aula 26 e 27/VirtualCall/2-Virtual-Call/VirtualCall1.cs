using System;
namespace Aulas2526.VirtualCall1
{
    class A {
        public virtual void M1() {
            Console.WriteLine("virtual A::M1");
        }
    }

    class B : A
    {
        public void M2()
        {
            Console.WriteLine("B::M2");
        }
        //public override void M1()
        //{
        //    Console.WriteLine("virtual B::M1 - override A::M1");
        //}

    }

    class C : B
    {
        public override void M1()
        {
            Console.WriteLine("virtual C::M1 - override A::M1");
        }
        public void M3()
        {
            Console.WriteLine("C::M3");
        }
    }

    public class Program
    {
        public static void Main1()
        {
            // REGRA: Primeiro, para decidir se o despacho é estático ou 
            // dinâmico, o AVE vai verificar se o método definido
            // no *tipo da referência* é virtual. Se for virtual,
            // faz callvirt e escolhe o método presente na tabela
            // do *tipo exato* do objeto (this) - e *não* a tabela do 
            // *tipo da referência*.
            A c = new C();
            c.M1();  // C::M1, Despacho dinâmico
            //c.M2(); // Erro, Tipo A nao contem M2
            ((B)c).M2(); // <=> B aux = (B)c; aux.M2();
            // Tipo da referência: B; B::M2 é virtual? Não => despacho estático
            // invoca B::M2

            B c2 = (B)c;
            c2.M2(); // Despacho estatico

            A b = new B();
            b.M1(); // B::M1 <=> A::M1, Despacho dinâmico
            // COMENTAR/DESCOMENTAR virtual B::M1

        }
    }
}
/*
virtual C::M1 - override A::M1
virtual A::M1

*/ 