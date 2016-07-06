public class Json.Api.ResourceLinks : Json.Api.Links
{
	public Link self { get; construct set; }

	public ResourceLinks (Link self)
	{
		GLib.Object (self: self);
	}
}
