using System;

namespace Webao
{
    public class WebaoBuilder
    {
        public static AbstractAccessObject Build(Type webao, IRequest req) {
            /*
             * !!!! TO DO. Read and process annotations !!!!
             */
            return (AbstractAccessObject) Activator.CreateInstance(webao, req);
        }
    }
}
