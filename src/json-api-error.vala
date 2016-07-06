public class Json.Api.Error : Json.Api.Object
{
	public string       id      { get; construct set;                 }
	public ErrorLinks   links   { get; construct set;                 }
	public string       status  { get; construct set;                 }
	public string       code    { get; construct set;                 }
	public string       title   { get; construct set;                 }
	public string?      details { get; construct set; default = null; }
	public ErrorSource? source  { get; construct set; default = null; }

	public Error (string       id,
	              ErrorLinks   links,
	              string       status,
	              string       code,
	              string       title,
	              string?      details = null,
	              ErrorSource? source  = null)
	{
		GLib.Object (id: id, links: links, status: status, code: code, title: title, details: details, source: source);
	}
}
