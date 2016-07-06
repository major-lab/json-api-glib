/* Copyright 2016 Guillaume Poirier-Morency <guillaumepoiriermorency@gmail.com>
 *
 * This file is part of JSON-API-GLib.
 *
 * JSON-API-GLib is free software: you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by the
 * Free Software Foundation, either version 3 of the License, or (at your
 * option) any later version.
 *
 * JSON-API-GLib is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with JSON-API-GLib.  If not, see <http://www.gnu.org/licenses/>.
 */

public class Json.Api.Links : Json.Api.Object
{
	public override Node serialize_property (string property_name, Value @value, ParamSpec pspec)
	{
		if (@value.type ().is_a (typeof (Link)))
		{
			var link = @value as Link;

			if (link != null && link.meta == null)
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
