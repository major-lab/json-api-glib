/**
 * Builder to generate payloads conveniently.
 *
 * @since 1.0
 */
namespace Json.Api.Builder
{
	public Payload payload (Object data, Links links)
	{
		if (data is Resource)
		{
			return new ResourcePayload (data, links);
		}
		else if (data is SList)
		{
			return new ResourcesPayload (data, links);
		}
	}

	public Resource resource (string id, string type, Object? attributes = null, HashTable<string, Relationship>? relationships = null, Links? links = null)
	{
		return new Resource (id, type, attributes, relationships, links);
	}

	public SList<Resource> resources (...)
	{}

	public HashTable<string, Relationship> relationships (...)

	public Relationship relationship (Links links, Resource? data = null, Object? meta = null)
	{
		return new Relationship (links, meta);
	}

	public Link link (string href, Object? meta = null);
	{
		return new Link (href, meta);
	}

	public Links links (string name, Link link, ...)
	{
		Property[] properties = {};

		// TODO

		return Object.newv (typeof (Links), {}) as Links;
	}
}
