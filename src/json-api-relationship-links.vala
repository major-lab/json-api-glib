public class Json.Api.RelationshipLinks : Json.Api.Links
{
	public Link? self    { get; construct set; default = null; }
	public Link? related { get; construct set; default = null; }

	public RelationshipLinks (Link? self = null, Link? related = null)
	{
		GLib.Object (self: self, related: related);
	}
}
