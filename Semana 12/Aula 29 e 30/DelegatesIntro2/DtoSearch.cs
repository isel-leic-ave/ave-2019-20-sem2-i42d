using System.Collections.Generic;

namespace Webao.Test.Dto
{
    public class DtoSearch
    {
        public DtoResults Results { get; set; }
        // Added
        public List<Artist> GetArtistsList()
        {
            return this.Results.ArtistMatches.Artist;
        }
    }

    public class DtoResults
    {
        public DtoArtistMatches ArtistMatches { get; set; }
    }

    public class DtoArtistMatches
    {
        public List<Artist> Artist { get; set; }
    }
}