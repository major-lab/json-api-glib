public class Json.Api.ResourcesPayload : Json.Api.Payload
{
	public SList<Resource> data { get; owned construct set; }

	public ResourcesPayload (owned SList<Resource> data, PaginationLinks links, Json.Object? meta = null)
	{
		GLib.Object (links: links, meta: meta);
		// FIXME: compiler bug with (owned) construct
		this.data = (owned) data;
	}
}
