public class Json.Api.PayloadLinks : Json.Api.Links
{
	public Link? self    { get; construct set; default = null; }
	public Link? related { get; construct set; default = null; }

	public PayloadLinks (Link? self = null, Link? related = null)
	{
		GLib.Object (self: self, related: related);
	}
}
