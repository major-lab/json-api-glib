public class Json.Api.RelationshipLinks : Json.Api.Links
{
	public Link people  { get; construct set; }
	public Link related { get; construct set; }

	public RelationshipLinks (Link self, Link people, Link related)
	{
		GLib.Object (self: self, people: people, related: related);
	}
}
