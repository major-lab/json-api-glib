public class Json.Api.ErrorLinks : Json.Api.Object
{
	public Link about { get; construct set; }

	public ErrorLinks (Link about)
	{
		GLib.Object (about: about);
	}
}
