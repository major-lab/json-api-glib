json_api_glib_sources = [
    'json-api-data-payload.vala',
    'json-api-error-links.vala',
    'json-api-error-source.vala',
    'json-api-error.vala',
    'json-api-errors-payload.vala',
    'json-api-jsonapi.vala',
    'json-api-link.vala',
    'json-api-links.vala',
    'json-api-meta-payload.vala',
    'json-api-object.vala',
    'json-api-pagination-links.vala',
    'json-api-payload-links.vala',
    'json-api-payload.vala',
    'json-api-relationship-links.vala',
    'json-api-relationship.vala',
    'json-api-resource-payload.vala',
    'json-api-resource.vala',
    'json-api-resources-payload.vala']
json_api_glib_lib = library('json-api-glib', json_api_glib_sources,
                            dependencies: [glib_dep, gobject_dep, json_glib_dep])

json_api_glib_dep = declare_dependency(link_with: json_api_glib_lib,
                                       include_directories: include_directories('.'))
