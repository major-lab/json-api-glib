public class Json.Api.JsonApiPayload : Json.Api.Payload
{
	public string version { get; construct set; default = "1.0"; }

	public JsonApiPayload (string version = "1.0", Json.Object? meta = null)
	{
		GLib.Object (version: version, meta: meta);
	}
}
