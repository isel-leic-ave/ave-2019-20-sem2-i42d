using System;
using System.Reflection;

namespace Exercicios_Implementacao2
{
    internal class ValidatorAttribute : Attribute
    {
        private MethodInfo Method { get; set; }

        public ValidatorAttribute(Type type, string methodName)
        {
            // Get MethodInfo
            //Method = this.GetType().GetMethod(methodName, BindingFlags.NonPublic | BindingFlags.Static);
            Method = type.GetMethod(methodName, BindingFlags.NonPublic | BindingFlags.Static);
        }

        public bool IsValidNumber(int nr) {
            return (bool)Method.Invoke(null, new object[] { nr });
        }
    }
}