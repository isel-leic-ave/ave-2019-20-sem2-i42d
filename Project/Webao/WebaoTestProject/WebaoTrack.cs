using System.Collections.Generic;
using Webao;
using Webao.Attributes;
using Webao.Base;
using WebaoTestProject.Dto;

namespace WebaoTestProject
{
[BaseUrl("http://ws.audioscrobbler.com/2.0/")]
[AddParameter("format", "json")]
[AddParameter("api_key", LastFmAPI.API_KEY)]

public class WebaoTrack : AbstractAccessObject
{
    public WebaoTrack(IRequest req) : base(req) { }

    [Get("?method=geo.gettoptracks&country={country}")]
    [Mapping(typeof(DtoGeoTopTracks), ".Tracks.Track")]
    public List<Track> GeoGetTopTracks(string country) {
        return (List<Track>) Request(country);
    }
}
}