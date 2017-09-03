# Image Information URI

Let's create a URI to return the image information.

Start with the base URI (the image identifier) we used as the base for adding on parameters:

`{scheme}://{server}{/prefix}/{identifier}`

Now add `info.json` to the end. That gives us our image information request URI:

`{scheme}://{server}{/prefix}/{identifier}/info.json`

## Example Image Information URIs

- https://iiif.lib.ncsu.edu/iiif/0008232/info.json
- https://data.getty.edu/museum/api/iiif/3384/info.json
- https://lakeimagesweb.artic.edu/iiif/7a6a2b0c-45be-488e-57f5-7e053950dffb/info.json

## Redirection

Note that some image servers support a feature where the base URI identifier redirects to the full image information request URI.

So: `{scheme}://{server}{/prefix}/{identifier}`

Redirects to: `{scheme}://{server}{/prefix}/{identifier}/info.json`

Try these examples:
- https://iiif.lib.ncsu.edu/iiif/0008232
- http://collections.frick.org/apis/iiif/image/v2/7337
- https://dlcs.io/iiif-img/wellcome/1/05bf51b9-991f-476d-bff1-dd5e96c4e122
