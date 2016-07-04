# JSON-API-GLib

Implementation of the [JSON API](http://jsonapi.org/) 1.0 specification for
GLib.

The provided classes consist of serializable `GLib.Object` definitions
producing conformant JSON API payloads. It is designed as an extension to
JSON-GLib by sharing a common root namespace and generating `Json.Node`
objects.

If you are using [Valum](https://github.com/valum-framework/valum/), the
following code should give you a good idea of how to build an app.

```vala
using Json;
using Valum;

app.use (accept ("application/vnd.api+json"));

app.get ("/", (req, res) => {
    var generator = new Generator ();

    generator.root   = gobject_serialize (new Api.JsonApiPayload ());
    generator.pretty = false;

    return generator.to_stream (res.body);
});
```

## Usage

Only the following classes should be serialized into and unserialized from
payloads using `Json.gobject_serialize` and `Json.gobject_unserialize`:

 - `JsonApiPayload`
 - `ResourcePayload`
 - `ResourcesPayload`

Links also come in various flavours: the actual class constructor will hint on
what kind of `Links` is expected.

For `attributes` and `meta` objects, one can directly use a `Json.Object`
instance.
