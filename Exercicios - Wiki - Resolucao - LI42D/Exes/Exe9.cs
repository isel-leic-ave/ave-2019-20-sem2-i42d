using System;
namespace Exercicios.Exes
{
    interface IBean
    {
        void Set(int v);
        int Get();
    }
    struct S : IBean
    {
        public int x;
        public void Set(int v) { this.x = v; }
        public int Get() { return this.x; }
    }

    public class Exe9
    {
        public static void Main1()
        {
            S s = new S(); 
            IBean i = s; // Box
            // a)
            ((IBean)s).Set(11); // Box
            Console.WriteLine(s.x); // Imprimir struct que esta no stack e nao a versao boxed
            ///
            // Para imprimir a versao boxed tinha que fazer:
            IBean i1 = s; // Box
            i1.Set(11);
            Console.WriteLine(i1.Get()); 
            ///
            // b)
            ((S)i).Set(11); // Unbox; faz aux.x = 11, em que aux e' a variavel temporaria unboxed no stack
            Console.WriteLine(i.Get()); // 0
            // c)
            s.x = 11; // Alterar a struct s no stack
            Console.WriteLine(i.Get()); // Consultar a versao boxed previamente criada (que esta' no heap)
            // d)
            s.Set(11); // Alterar a struct s no stack
            Console.WriteLine(i.Get());
        }
    }
//Dadas as variáveis s e i definidas pelas expressões: S s = new S(); IBean i = s;
//a) F__ A execução de((IBean) s).Set(11); Console.WriteLine(s.x); tem o output 11.
//b) F__ A execução de ((S) i).Set(11); Console.WriteLine(i.Get()); tem o output 11.
//c) F__ A execução de s.x = 11; Console.WriteLine(i.Get()); tem o output 11.
//d) F__ A execução de s.Set(11); Console.WriteLine(i.Get()); tem o output 11.


}


















