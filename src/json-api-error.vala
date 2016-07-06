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

public class Json.Api.Error : Json.Api.Object
{
	public string       id      { get; construct set;                 }
	public ErrorLinks   links   { get; construct set;                 }
	public string       status  { get; construct set;                 }
	public string       code    { get; construct set;                 }
	public string       title   { get; construct set;                 }
	public string?      details { get; construct set; default = null; }
	public ErrorSource? source  { get; construct set; default = null; }

	public Error (string       id,
	              ErrorLinks   links,
	              string       status,
	              string       code,
	              string       title,
	              string?      details = null,
	              ErrorSource? source  = null)
	{
		GLib.Object (id: id, links: links, status: status, code: code, title: title, details: details, source: source);
	}
}
