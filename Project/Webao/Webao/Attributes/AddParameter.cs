using System;

namespace Webao.Attributes
{
    [AttributeUsage(AttributeTargets.Class, AllowMultiple = true)]
    public class AddParameterAttribute : Attribute
    {
        public readonly string name;
        public readonly string val;

        public AddParameterAttribute(string name, string val)
        {
            this.name = name;
            this.val = val;
        }
    }
}
