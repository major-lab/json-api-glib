public class Json.Api.Relationship : Json.Api.Object
{
	public RelationshipLinks links { get; construct set; }
	public Resource          data  { get; construct set; }

	public Relationship (RelationshipLinks links, Resource data, Json.Object? meta = null)
	{
		GLib.Object (links: links, data: data, meta: meta);
	}
}
