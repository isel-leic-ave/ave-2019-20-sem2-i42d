using System;

namespace Webao.Attributes
{
    [AttributeUsage(AttributeTargets.Method, AllowMultiple = false)]
    public class MappingAttribute : Attribute
    {
        public readonly string path;
        public readonly Type destType;

        public MappingAttribute(Type dest, string path)
        {
            this.path = path;
            this.destType = dest;
        }
    }
}
