json_api_glib_sources = [
    'json-api-error-source.vala',
    'json-api-error.vala',
    'json-api-error-links.vala',
    'json-api-jsonapi-payload.vala',
    'json-api-link.vala',
    'json-api-links.vala',
    'json-api-object.vala',
    'json-api-pagination-links.vala',
    'json-api-payload.vala',
    'json-api-relationship-links.vala',
    'json-api-relationship.vala',
    'json-api-resource-payload.vala',
    'json-api-resource.vala',
    'json-api-resources-payload.vala']
json_api_glib_lib = library('json-api-glib', json_api_glib_sources, dependencies: [glib, gobject, json])

json_api_glib = declare_dependency(link_with: json_api_glib_lib, include_directories: include_directories('.'))
