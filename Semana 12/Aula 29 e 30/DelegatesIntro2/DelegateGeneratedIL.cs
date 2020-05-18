using System;
using System.Collections.Generic;
using Webao.Test.Dto;

namespace DelegatesIntro
{
    public delegate char MyDelegate(char c);

    public class DelegateGeneratedIL
    {
        public static char ToUpperCase(char ch) {
            if (ch >= 'a' && ch <= 'z')
            {
                //return (char)(ch - ' ');
                // Or:
                return (char)(ch - 'a' + 'A');

            }
            return ch;
        }

        public static void Main() {

            /*
            string methodName = "Webao.Test.Dto.DtoSearch.GetArtistsList";
            // Neste caso GetArtistsList é o nome do método da classe 
            // DtoSearch que faz: return this.Results.ArtistMatches.Artist;.

            //
            // C# hard-coded equivalente ao IL a gerar
            //
            DtoResults results = new DtoResults();
            results.ArtistMatches = new DtoArtistMatches();
            results.ArtistMatches.Artist = new List<Artist>();
            Artist artist = new Artist();
            artist.Name = "xpto artist";
            results.ArtistMatches.Artist.Add(artist);

            Webao.Test.Dto.DtoSearch obj = new Webao.Test.Dto.DtoSearch();
            // Set DtoResults in obj
            obj.Results = results;
            Func<List<Artist>> myDelegate = obj.GetArtistsList;
            ///
            /// TO DO
            /// Or, define a Func delegate that returns an object --> no generics involved

            // Invoke delegate
            //myDelegate.Invoke();
            // Or:
            List<Artist> list = myDelegate();
            Console.WriteLine(list[0].Name);
            */

            MyDelegate del = ToUpperCase;

            Console.WriteLine(del('a'));

        }
    }
}
