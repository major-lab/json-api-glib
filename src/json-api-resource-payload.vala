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

public class Json.Api.ResourcePayload : Json.Api.Payload
{
	public Resource?        data     { get; construct set;                 }
	public SList<Resource>? included { get; owned     set; default = null; }

	public ResourcePayload (Resource? data, PayloadLinks links, Json.Object? meta = null)
	{
		GLib.Object (data: data, links: links, meta: meta);
	}

	public override Json.Node serialize_property (string property_name, Value @value, ParamSpec pspec)
	{
		var node = base.serialize_property (property_name, @value, pspec);
		if (property_name == "data")
		{
			var data_type = node.get_object ().get_string_member ("data-type");
			node.get_object ().set_string_member ("type", data_type);
			node.get_object ().remove_member ("data-type");
		}
		return node;
	}
}
