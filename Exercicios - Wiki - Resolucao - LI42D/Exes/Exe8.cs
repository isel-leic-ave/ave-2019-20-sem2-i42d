using System;
using System.Reflection;

namespace Exercicios.Exes
{
    class Sammy : Attribute { public int Nr { get; set; } }
    [Sammy(Nr = 71)] class Game { }
    //[Sammy(Nr = App.Foo())] class Deal { }
    public class App
    {
        public static int Foo() { return 17; }
        static void Main1()
        {
            //typeof(Game).GetCustomAttribute().Nr = 19;
            //Console.WriteLine(typeof(Game).GetCustomAttribute().Nr);
            typeof(Game).GetCustomAttribute<Sammy>().Nr = 19;
            Console.WriteLine(typeof(Game).GetCustomAttribute<Sammy>().Nr);


            typeof(Game).GetCustomAttribute<Sammy>().Nr = 19;
            Console.WriteLine(typeof(Game).GetCustomAttribute<Sammy>().Nr);
        }
    }

/*
 Para a definição dada de Sammy, Game, Deal e App:
a) T__ a instrução da linha 3 dá erro de compilação.
b) T__ a instrução da linha 8 retorna 71.
c) F__ a instrução da linha 7 lança uma excepção.
d) F__ a instrução (new Sammy()).Nr = 15; dá erro de compilação.
 */

}
