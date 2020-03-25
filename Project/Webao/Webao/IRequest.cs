using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Webao
{
    public interface IRequest
    {
        IRequest BaseUrl(string host);
        IRequest AddParameter(string arg, string val);
        object Get(string path, Type targetType);
    }
}
