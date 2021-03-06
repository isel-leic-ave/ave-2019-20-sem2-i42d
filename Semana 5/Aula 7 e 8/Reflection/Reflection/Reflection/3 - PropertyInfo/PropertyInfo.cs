﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;

namespace CodeReflection
{
    class Student
    {
        /*public*/private  string Name { get; /*private*/ set; }
        public int Number { get; private set; }
        public static int StaticProp { get; set; }
        public Student(int nr, string name)
        {
            Number = nr;
            Name = name;
        }
    }


    class Program
    {
        public static void ShowProperties(object o)
        {
			// Non-optimised version
			Console.WriteLine ("Non-optimised version");
            Type oType = o.GetType();
            // Type's name
            Console.WriteLine("Type's name: " + oType.Name);

            MemberInfo[] ms = oType.GetMembers(); // Public (instance+static) memberInfo only
            foreach (MemberInfo m in ms)
            {
                PropertyInfo p = m as PropertyInfo;
                if (p != null)
                {
                    MethodInfo pGet = p.GetGetMethod();
                    object val = pGet.Invoke(o, null);
                    Console.WriteLine("{0} = {1}", p.Name, val);
                }

            }

            // Optimised version
			Console.WriteLine ("Optimised version");
			Type oType1 = o.GetType();
            //PropertyInfo[] ps = oType1.GetProperties(); // Public properties only
            PropertyInfo[] ps = oType1.GetProperties(BindingFlags.Public 
                                                     | BindingFlags.NonPublic
                                                     | BindingFlags.Instance);
            foreach (PropertyInfo p in ps) {
                //object val = p.GetValue(o, null); // Overload used with indexers
                object val = p.GetValue(o); 
                Console.WriteLine("{0} = {1}", p.Name, val);
            }

        }

        static void Main1(string[] args)
        {
            ShowProperties(new Student(12, "Ana"));
            //Student s = new Student(12, "Ana");
            //Student.StaticProp = 10;
            //ShowProperties(s);
        
        }
      
    }
}
