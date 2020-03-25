using System;

namespace Webao.Attributes
{
    public class BaseUrlAttribute : Attribute
    {
        public readonly string host;

        public BaseUrlAttribute(string host)
        {
            this.host = host;
        }
    }
}
