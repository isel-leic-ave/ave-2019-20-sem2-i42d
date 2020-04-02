using System;
using Webao;
using WebaoTestProject.Dto;

namespace WebaoTestProject
{
    internal class LastfmMockRequest : IRequest
    {
        //private Dictionary<...> lastFmObjects = new Dictionary<...>();

        public LastfmMockRequest() {
            // Hard coded objects
            DtoArtist dtoArtist = new DtoArtist();
            dtoArtist.Artist = new Artist();
            //lastFmObjects.Add();
        }

        public IRequest AddParameter(string arg, string val)
        {
            throw new NotImplementedException();
        }

        public IRequest BaseUrl(string host)
        {
            throw new NotImplementedException();
        }

        public object Get(string path, Type targetType)
        {
            throw new NotImplementedException();

            // TODO

            // Retornar do dicionario

        }
    }
}