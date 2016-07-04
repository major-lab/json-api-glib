public class Json.Api.Links : Json.Api.Object
{
	public Link self { get; construct set; }

	public Links (Link self)
	{
		GLib.Object (self: self);
	}

	public override Node serialize_property (string property_name, Value @value, ParamSpec pspec)
	{
		if (@value.type ().is_a (typeof (Link)))
		{
			var link = @value as Link;

			if (link.meta == null)
			{
				var node = new Node (NodeType.VALUE);
				node.set_string (link.href);
				return node;
			}
		}

		return base.serialize_property (property_name, @value, pspec);
	}

	public override bool deserialize_property (string property_name, out Value @value, ParamSpec pspec, Node property_node)
	{
		if (pspec.value_type.is_a (typeof (Link)) && property_node.get_value_type ().is_a (typeof (string)))
		{
			@value = new Link (property_node.get_string ());
			return true;
		}
		else
		{
			return base.deserialize_property (property_name, out @value, pspec, property_node);
		}
	}
}
