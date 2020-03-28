using System;
using System.Collections.Generic;
using System.Reflection;
using Webao;
using Webao.Attributes;
using Webao.Base;
using WebaoTestProject.Dto;

namespace WebaoTestProject
{
[BaseUrl("http://ws.audioscrobbler.com/2.0/")]
[AddParameter("format", "json")]
[AddParameter("api_key", LastFmAPI.API_KEY)]
public class WebaoArtist : AbstractAccessObject
{
    public WebaoArtist(IRequest req) : base(req)
    {

        ProcessCustomAttributes();

    }
    // Example to how process custom attribute
    // But you should use a type cache to perform reflection
    // only once or minimize its use
    private void ProcessCustomAttributes()
    {
        // Get type
        Type type = typeof(WebaoArtist);
        // Get custom attribute BaseUrl
        // inherit parameter = false
        BaseUrlAttribute att = type.GetCustomAttribute<BaseUrlAttribute>(false);
        // When invoking GetCustomAttribute, the data from Assembly's Metadata
        // are deserialized and an object of type BaseUrlAttribute (attribute class)
        // is created.
        
        if (att != null)
        {
            string host = att.host;
            Console.WriteLine("host = " + host);
        }
    }

    [Get("?method=artist.getinfo&artist={name}")]
    [Mapping(typeof(DtoArtist), ".Artist")]
    public Artist GetInfo(string name) => (Artist)Request(name); 
        

    [Get("?method=artist.search&artist={name}")]
    [Mapping(typeof(DtoSearch), ".Results.ArtistMatches.Artist")]
    public List<Artist> Search(string name) => (List<Artist>)Request(name);       
}
}

















