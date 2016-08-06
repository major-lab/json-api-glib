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

public class Json.Api.Payload : Json.Api.Object
{
	public SList<Error>?    errors   { get; owned     set; default = null; }
	public JsonApi?         jsonapi  { get; construct set; default = null; }
	public PayloadLinks     links    { get; construct set;                 }

	public Payload.from_jsonapi (JsonApi jsonapi, PayloadLinks links)
	{
		GLib.Object (jsonapi: jsonapi, links: links);
	}

	public Payload.from_errors (owned SList<Error> errors, PayloadLinks links)
	{
		GLib.Object (links: links);
		this.errors = (owned) errors;
	}
}
