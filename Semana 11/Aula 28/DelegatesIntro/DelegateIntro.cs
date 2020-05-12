using System;
namespace DelegatesIntro
{

    // Define a delegate type
    // compatible with methods that return void and
    // receive int as parameter
    delegate void Action(int i);

    delegate void GenericAction<T>(T i);


    public class DelegateIntro
    {
        int count = 0;

        private static void MStatic(int x) {
            Console.WriteLine("DelegateIntro::MStatic, x = {0}", x);
        }
        private void MInstance(int x)
        {
            ++count;
            Console.WriteLine("DelegateIntro::MInstance, x = {0}, count = {1}", x, count);
        }

        public static void Main() {
            // Create obj to be used as "this" parameter
            DelegateIntro obj = new DelegateIntro();
            //
            // Create delegate
            //
            Action action = new Action(DelegateIntro.MStatic);
            Action action1 = new Action(obj.MInstance); // Get method name + this
            //Action action1 = new Action(obj.MInstance(10));// Error, we are calling the method here

            // Or:
            Action action2 = DelegateIntro.MStatic;
            Action action3 = obj.MInstance;
            //
            // Invoke
            //
            action.Invoke(10);
            action1.Invoke(20);
            // Or:
            action(10);
            action1(20);
            //
            // Using GenericAction
            //
            GenericAction<int> ga = obj.MInstance;
            ga(99);
            //
            // Associate lambda
            //
            //Action lambda = new Action( (int i) => Console.WriteLine("Lambda, i = {0}", i));
            // Simpler syntax, without calling new Action
            Action lambda = (int i) => Console.WriteLine("Lambda, i = {0}", i);

            // Invoke
            lambda(30);
            // Or:
            lambda.Invoke(30);
        }
    }
}












