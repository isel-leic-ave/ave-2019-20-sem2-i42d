using System;

namespace Webao.Attributes
{
    [AttributeUsage(AttributeTargets.Method, AllowMultiple = false)]
    public class GetAttribute : Attribute
    {
        public readonly string path;

        public GetAttribute(string path)
        {
            this.path = path;
        }
    }
}
