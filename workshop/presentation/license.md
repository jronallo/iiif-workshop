# License

http://iiif.io/api/presentation/2.1/#license

Before you publish your manifest you may want to give some indication of how the resource can be reused.

The value of license should be a link to an external resource that describes the license or rights statement under which the resource may be used.

This could be your own statement for the resource or a group of resources.

Often this might be a CC license or a http://rightsstatements.org URL.

At the top-level of your manifest add a license:

```json
"license": "http://rightsstatements.org/vocab/CNE/1.0/"
```

How does the license property display in Universal Viewer and Mirador?
