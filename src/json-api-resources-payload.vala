public class Json.Api.ResourcesPayload : Json.Api.Payload
{
	public SList<Resource> data { get; owned set; }

	public ResourcesPayload (PaginationLinks links, Json.Object? meta = null)
	{
		GLib.Object (links: links, meta: meta);
	}
}
