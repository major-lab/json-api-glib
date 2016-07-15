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

public class Json.Api.Resource : Json.Api.Object
{
	public string data_type { get; construct set; }
	public string id        { get; construct set; }

	public Json.Object?                     attributes    { get; construct set; default = null; }
	public HashTable<string, Relationship>? relationships { get; construct set; default = null; }
	public ResourceLinks?                   links         { get; construct set; default = null; }

	public Resource (string                           id,
	                 string                           data_type,
	                 Json.Object?                     attributes    = null,
	                 HashTable<string, Relationship>? relationships = null,
	                 ResourceLinks?                   links         = null,
	                 Json.Object?                     meta          = null)
	{
		GLib.Object (data_type: data_type, id: id, attributes: attributes, relationships: relationships, links: links, meta: meta);
	}
}
