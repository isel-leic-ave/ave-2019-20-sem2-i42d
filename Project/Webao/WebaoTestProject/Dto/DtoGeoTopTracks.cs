using System.Collections.Generic;

namespace WebaoTestProject.Dto
{
    public struct DtoGeoTopTracks
    {
        public DtoTracks Tracks { get; set; }
    }

    public struct DtoTracks
    {
        public List<Track> Track { get; set; }
    }

}