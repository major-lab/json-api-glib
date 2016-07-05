public class Json.Api.Resource : Json.Api.Object
{
	public string data_type { get; construct set; }
	public string id        { get; construct set; }

	public Json.Object                      attributes    { get; construct set; }
	public HashTable<string, Relationship>? relationships { get; construct set; default = null; }
	public Links?                           links         { get; construct set; default = null; }

	public Resource (string                           id,
	                 string                           data_type,
	                 Json.Object                      attributes,
	                 HashTable<string, Relationship>? relationships = null,
	                 Links?                           links         = null,
	                 Json.Object?                     meta          = null)
	{
		GLib.Object (data_type: data_type, id: id, attributes: attributes, relationships: relationships, links: links, meta: meta);
	}
}
