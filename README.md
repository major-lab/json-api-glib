# JSON-API-GLib

Implementation of the [JSON API](http://jsonapi.org/) 1.0 specification for
GLib.

The provided classes consist of serializable `GLib.Object` definitions
producing conformant JSON API payloads. It is designed as an extension to
JSON-GLib by sharing a common root namespace and generating `Json.Node`
objects.

If you are using [Valum](https://github.com/valum-framework/valum/), the
following sample should give you a good idea of how to build an app:

```vala
using Json;
using Valum;

app.use (accept ("application/vnd.api+json"));

app.get ("/users/<int:id>", (req, res, next, ctx) => {
    var id = ctx["id"].get_string ();
    
    var payload = new ResourcePayload (new Resource (id, 
                                                     "user", 
                                                     Json.gobject_serialize (User.from_id (id))),
                                       new PayloadLinks (new Link ("/users/%s".printf (id));

    size_t length;
    return res.expand_utf8 (Json.gobject_to_data (payload, out length));
});
```

## Usage

Only the following classes should be serialized into and unserialized from
payloads using `Json.gobject_serialize` and `Json.gobject_unserialize`:

 - `Payload` to produce `errors` or `jsonapi`
 - `ResourcePayload`
 - `ResourcesPayload`

Links also come in various flavours: the actual class constructor will hint on
what kind of `Links` is expected.

For `attributes` and `meta` objects, one can directly use a `Json.Object`
instance.
