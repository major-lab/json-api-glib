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

public class Json.Api.ResourcesPayload : Json.Api.Payload
{
	public SList<Resource> data { get; owned construct set; }

	public ResourcesPayload (owned SList<Resource> data, PaginationLinks? links = null, Json.Object? meta = null)
	{
		GLib.Object (links: links, meta: meta);
		// FIXME: compiler bug with (owned) construct
		this.data = (owned) data;
	}

	public override Json.Node serialize_property (string property_name, Value @value, ParamSpec pspec)
	{
		var node = base.serialize_property (property_name, @value, pspec);
		if (property_name == "data")
		{
			node.get_array ().foreach_element ((array, index, element_node) => {
				var data_type = element_node.get_object ().get_string_member ("data-type");
				element_node.get_object ().set_string_member ("type", data_type);
				element_node.get_object ().remove_member ("data-type");
			});
		}
		return node;
	}
}
