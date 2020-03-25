namespace WebaoTestProject.Dto
{
    public struct Track
    {
        public string Name { get; set; }
        public string Mbid { get; set; }
        public string Url { get; set; }

        public int Listeners { get; set; }
        public Artist Artist { get; set; }
    }
}