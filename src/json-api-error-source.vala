public class Json.Api.ErrorSource : Json.Api.Object
{
	public string pointer   { get; construct set; }
	public string parameter { get; construct set; }

	public ErrorSource (string pointer, string parameter)
	{
		GLib.Object (pointer: pointer, parameter: parameter);
	}
}
