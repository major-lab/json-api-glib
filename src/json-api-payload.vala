public class Json.Api.Payload : Json.Api.Object
{
	public SList<Error>    errors   { get; owned     set; default = new SList<Error> ();    }
	public JsonApi         jsonapi  { get; construct set; default = new JsonApi ();         }
	public Links           links    { get; construct set;                                   }
	public SList<Resource> included { get; owned     set; default = new SList<Resource> (); }
}
