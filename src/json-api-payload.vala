public class Json.Api.Payload : Json.Api.Object
{
	public Links        links  { get; construct set; }
	public SList<Error> errors { get; owned     set; }
}
