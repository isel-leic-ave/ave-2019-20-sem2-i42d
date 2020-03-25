using System;
using System.Diagnostics;
using System.Reflection;

namespace Webao
{
    public abstract class AbstractAccessObject
    {
        private readonly IRequest req;
        
        protected AbstractAccessObject(IRequest req)
        {
            this.req = req;
        }

        public object Request(params object[] args) {
            StackTrace stackTrace = new StackTrace();
            MethodInfo callSite = (MethodInfo) stackTrace.GetFrame(1).GetMethod();
            /*
             * The callsite is the caller method.
             */
            throw new NotImplementedException();
        }
    }
}
