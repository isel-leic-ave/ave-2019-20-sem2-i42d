using System.Collections.Generic;
using NUnit.Framework;
using Webao;
using Webao.Base;
using WebaoTestProject.Dto;

namespace WebaoTestProject
{
    [TestFixture]
    public class HttpRequestTest
    {
        [Test]
        public void TestDummyRequest()
        {
            HttpRequest req = new HttpRequest();
            req.BaseUrl("http://ws.audioscrobbler.com/2.0");
            req.AddParameter("format", "json");
            req.AddParameter("api_key", LastFmAPI.API_KEY);
            /*
             * Search for band Muse
             */
            DtoSearch dto = (DtoSearch) req.Get(
                "?method=artist.search&artist=muse", 
                typeof(DtoSearch));
            Assert.AreEqual("Muse", dto.Results.ArtistMatches.Artist[0].Name);
            Assert.AreEqual("Mouse on Mars", dto.Results.ArtistMatches.Artist[3].Name);
            /*
             * Get top tracks from Australia
             */
            DtoGeoTopTracks aus = (DtoGeoTopTracks) req.Get(
                "?method=geo.gettoptracks&country=australia", 
                typeof(DtoGeoTopTracks));
            List<Track> tracks = aus.Tracks.Track;
            Assert.AreEqual("The Less I Know the Better", tracks[0].Name);
            Assert.AreEqual("Mr. Brightside", tracks[1].Name);
            Assert.AreEqual("The Killers", tracks[1].Artist.Name);
        }
    }
}
