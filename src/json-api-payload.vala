public class Json.Api.Payload : Json.Api.Object
{
	public SList<Error>?    errors   { get; owned     set; default = null; }
	public JsonApi?         jsonapi  { get; construct set; default = null; }
	public PayloadLinks     links    { get; construct set;                 }
	public SList<Resource>? included { get; owned     set; default = null; }
}
