# Image Service

http://iiif.io/api/presentation/2.1/#service

Up to this point we have only annotated a static image onto our canvas. We also want to make it clear that this particular image has an image service behind it that will enable access of other versions of the image resource.

Since we do have a IIIF image service for our image, we can add that `service` to the `resource`.

In this case the `@context` is necessary since the properties come from the IIIF Image API rather than from the Presentation API. This image service is a new context where the the property names get defined by a separate specification.

The `@id` is the same as the `@id` we would use within the `info.json` for the image. Remember that this URL usually redirects and resolves to the `info.json`.

Our resource with an embedded image service will look like this:

```json
{
  "@type": "dctypes:Image",
  "@id": "https://iiif.lib.ncsu.edu/iiif/segPap_022/full/500,/0/default.jpg",
  "width": 500,
  "height": 704,
  "service": {
    "@context":  "http://iiif.io/api/image/2/context.json",
    "@id": "https://iiif.lib.ncsu.edu/iiif/segPap_022",
    "profile": "http://iiif.io/api/image/2/level2.json"
  }
}
```

## Basic Working Manifest

And finally here's a basic working manifest!

Once your manifest looks like the one below you can **view it!**

We don't have everything we might want in our manifest, but it is now complete enough to view what we've done. Go on to the next step!

```json
{
  "@context": "http://iiif.io/api/presentation/2/context.json",
  "@type": "sc:Manifest",
  "@id": "http://localhost:3000/manifest.json",
  "label": "Papillons",
  "description": "Four patterns inspired by butterflies.",
  "attribution": "Special Collections Research Center at NCSU Libraries",
  "logo": "http://localhost:3000/logo.jpg",
  "sequences": [
    {
      "@type": "sc:Sequence",
      "canvases": [
        {
          "@type": "sc:Canvas",
          "@id": "http://localhost:3000/segPap_022/canvas/1",
          "label": "22",
          "width": 6099,
          "height": 8599,
          "images": [
            {
              "@type": "oa:Annotation",
              "motivation": "sc:painting",
              "on": "http://localhost:3000/segPap_022/canvas/1",
              "resource": {
                "@type": "dctypes:Image",
                "@id": "https://iiif.lib.ncsu.edu/iiif/segPap_022/full/500,/0/default.jpg",

                "service": {
                  "@context":  "http://iiif.io/api/image/2/context.json",
                  "@id": "https://iiif.lib.ncsu.edu/iiif/segPap_022",
                  "profile": "http://iiif.io/api/image/2/level2.json"
                }
              }
            }
          ]
        }
      ]
    }
  ]
}
```

<!-- #todo:660 view this manifest as a tree. json-ld.org/playground to visualize -->
