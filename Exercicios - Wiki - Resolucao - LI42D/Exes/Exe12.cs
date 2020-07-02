using System;
namespace Exercicios.Exes
{
//    class A
//    {
//        public virtual void Foo() { }
//    }
//    class App
//    {
//        void Main()
//        {
//            A a = new A();
//            a.Foo();
//        }
//    }

//    Para a instrução a.Foo() o compilador de C# gera: ldloc.0 callvirt instance void A::Foo()
//Alterando a definição de Foo para:
//a) F___ public void Foo() { }
//    o compilador gera: ldloc.0 call instance void A::Foo()
//   Gera callvirt para testar se o this e' diferente de null, mas metodo e' nao virtual => Despacho Estatico


//b) F___ public void Foo() { }
//    o compilador gera: call instance void A::Foo()
    // Precisa de carregar o this pois nao e' estatico

//c) F___ public static void Foo() { }
//    e a.Foo(); alterada para A.Foo(); o compilador gera: ldloc.0 call void A::Foo()

    // Nao precisa de carregar o this pois agora e' estatico

//d) T___ public static void Foo() { }
    //e a.Foo(); alterada para A.Foo(); o compilador gera: call void A::Foo()

    //Despacho estatico

}







