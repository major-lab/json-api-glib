/**
 * If the meta is 'null', then the serialization should only take the 'href'
 * parameter directly.
 */
public class Json.Api.Link : Json.Api.Object
{
	public string href { get; construct set; }

	public Link (string href, Json.Object? meta = null)
	{
		GLib.Object (href: href, meta: meta);
	}
}

