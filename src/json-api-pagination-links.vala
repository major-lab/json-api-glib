public class Json.Api.PaginationLinks : Links
{
	public Link first { get; construct set; }
	public Link last  { get; construct set; }
	public Link prev  { get; construct set; }
	public Link next  { get; construct set; }

	public PaginationLinks (Link self, Link first, Link last, Link prev, Link next)
	{
		GLib.Object (self: self, first: first, last: last, prev: prev, next: next);
	}
}
