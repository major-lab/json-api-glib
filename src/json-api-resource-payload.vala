public class Json.Api.ResourcePayload : Json.Api.Payload
{
	public Resource data { get; construct set; }

	public ResourcePayload (Links links, Resource data)
	{
		GLib.Object (links: links, data: data);
	}
}
