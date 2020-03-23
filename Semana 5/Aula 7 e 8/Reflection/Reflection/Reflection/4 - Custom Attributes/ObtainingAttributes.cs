using System;
using System.Reflection;

[AttributeUsage(AttributeTargets.Method)]
class MyAttribute : Attribute {
	public string Info { get; /*private*/ set; }
	public MyAttribute(string s) { Info = s; }
}


public class Program {
	//[My("Ola")]
    [My("Ola"/*, Info = "123"*/)]
	public void M() {}
	
	public static void Main1() {
        // Get type
        Type type = typeof(Program);
        // Get custom attribute applied to type's methods
		MyAttribute att = null;
		foreach (MethodInfo mi in type.GetMethods()) {
			if ((att = (MyAttribute)
                 Attribute.GetCustomAttribute(mi, typeof(MyAttribute), false)) != null) {
				Console.WriteLine("Found attribute {0} in method {1}: " +
                                  "att.Info = {2}", 
                                  typeof(MyAttribute), mi.ToString(), att.Info);
			}
		}
        // Se for para obter um atributo de um dado membro usar:
        MethodInfo meth = type.GetMethod("M");
        //att = (MyAttribute)meth.GetCustomAttribute(typeof(MyAttribute), false);
        // Ou:
        att = (MyAttribute)meth.GetCustomAttribute<MyAttribute>(false);
        if (att != null)
        {
            Console.WriteLine("Found attribute {0} in method {1}: " +
                  "att.Info = {2}",
                  typeof(MyAttribute), meth.ToString(), att.Info);
        }
	}

}
