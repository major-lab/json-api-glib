/**
 * Define a base class that implements {@link Json.Serializable} and provide
 * basic serialization support for types used across the library.
 *
 * @since 1.0
 */
public abstract class Json.Api.Object : GLib.Object, Json.Serializable
{
	public Json.Object? meta { get; construct set; default = null; }

	public unowned ParamSpec? find_property (string name)
	{
		return ((ObjectClass) get_type ().class_ref ()).find_property (name);
	}

	public virtual Node serialize_property (string property_name, Value @value, ParamSpec pspec)
	{
		if (@value.type ().is_a (typeof (Json.Object)))
		{
			var obj = @value as Json.Object;
			if (obj != null)
			{
				var node = new Node (NodeType.OBJECT);
				node.set_object (obj);
				return node;
			}
		}
		else if (@value.type ().is_a (typeof (SList)))
		{
			unowned SList<GLib.Object> slist_value = @value as SList<GLib.Object>;

			if (slist_value != null || property_name == "data")
			{
				var array = new Array.sized (slist_value.length ());

				foreach (var item in slist_value)
				{
					array.add_element (gobject_serialize (item));
				}

				var node = new Node (NodeType.ARRAY);
				node.set_array (array);
				return node;
			}
		}
		else if (@value.type ().is_a (typeof (HashTable)))
		{
			var obj = new Json.Object ();

			var ht = @value as HashTable<string, GLib.Object>;

			if (ht != null)
			{
				ht.foreach ((k, v) => {
					obj.set_member (k, gobject_serialize (v));
				});

				var node = new Node (NodeType.OBJECT);
				node.set_object (obj);
				return node;
			}
		}

		return default_serialize_property (property_name, @value, pspec);
	}

	public virtual bool deserialize_property (string property_name, out Value @value, ParamSpec pspec, Node property_node)
	{
		return default_deserialize_property (property_name, out @value, pspec, property_node);
	}
}
