public class Json.Api.ResourcePayload : Json.Api.Payload
{
	public Resource data { get; construct set; }

	public ResourcePayload (Resource data, PayloadLinks links, Json.Object? meta = null)
	{
		GLib.Object (data: data, links: links, meta: meta);
	}
}
