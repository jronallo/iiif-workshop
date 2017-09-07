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

## Manifest as Linked Data and Visualized

You can visit the [JSON-LD Playground][json-ld-playground] and copy/paste your manifest into the form field. Then you can see how the JSON-LD looks in different serializations and visualize the tree structure of the manifest.

Here's a link to our [current manifest].

[json-ld-playground]: https://json-ld.org/playground/
[current manifest]: https://json-ld.org/playground/#startTab=tab-expanded&json-ld=%7B%22%40context%22%3A%22http%3A%2F%2Fiiif.io%2Fapi%2Fpresentation%2F2%2Fcontext.json%22%2C%22%40type%22%3A%22sc%3AManifest%22%2C%22%40id%22%3A%22http%3A%2F%2Flocalhost%3A3000%2Fmanifest.json%22%2C%22label%22%3A%22Papillons%22%2C%22description%22%3A%22Four%20patterns%20inspired%20by%20butterflies.%22%2C%22attribution%22%3A%22Special%20Collections%20Research%20Center%20at%20NCSU%20Libraries%22%2C%22logo%22%3A%22http%3A%2F%2Flocalhost%3A3000%2Flogo.jpg%22%2C%22sequences%22%3A%5B%7B%22%40type%22%3A%22sc%3ASequence%22%2C%22canvases%22%3A%5B%7B%22%40type%22%3A%22sc%3ACanvas%22%2C%22%40id%22%3A%22http%3A%2F%2Flocalhost%3A3000%2FsegPap_022%2Fcanvas%2F1%22%2C%22label%22%3A%2222%22%2C%22width%22%3A6099%2C%22height%22%3A8599%2C%22images%22%3A%5B%7B%22%40type%22%3A%22oa%3AAnnotation%22%2C%22motivation%22%3A%22sc%3Apainting%22%2C%22on%22%3A%22http%3A%2F%2Flocalhost%3A3000%2FsegPap_022%2Fcanvas%2F1%22%2C%22resource%22%3A%7B%22%40type%22%3A%22dctypes%3AImage%22%2C%22%40id%22%3A%22https%3A%2F%2Fiiif.lib.ncsu.edu%2Fiiif%2FsegPap_022%2Ffull%2F500%2C%2F0%2Fdefault.jpg%22%2C%22service%22%3A%7B%22%40context%22%3A%22http%3A%2F%2Fiiif.io%2Fapi%2Fimage%2F2%2Fcontext.json%22%2C%22%40id%22%3A%22https%3A%2F%2Fiiif.lib.ncsu.edu%2Fiiif%2FsegPap_022%22%2C%22profile%22%3A%22http%3A%2F%2Fiiif.io%2Fapi%2Fimage%2F2%2Flevel2.json%22%7D%7D%7D%5D%7D%5D%7D%5D%7D
