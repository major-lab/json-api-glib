public class Json.Api.PaginationLinks : Json.Api.PayloadLinks
{
	public Link? first { get; construct set; default = null; }
	public Link? last  { get; construct set; default = null; }
	public Link? prev  { get; construct set; default = null; }
	public Link? next  { get; construct set; default = null; }

	public PaginationLinks (Link? self    = null,
	                        Link? related = null,
	                        Link? first   = null,
	                        Link? last    = null,
	                        Link? prev    = null,
	                        Link? next    = null)
	{
		GLib.Object (self: self, related: related, first: first, last: last, prev: prev, next: next);
	}
}
