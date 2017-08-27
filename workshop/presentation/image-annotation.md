# Image Annotation

http://iiif.io/api/presentation/2.1/#image-resources

## `images`

An image is associated with a canvas via an annotation. In this section we'll create

```json
{
  "@type": "sc:Canvas",
  "@id": "http://localhost:3000/segPap_022/canvas/1",
  "label": "22",
  "width": 6099,
  "height": 8599,
  "images": [ ]
}
```

## Add an Annotation

IIIF uses the [Open Annotation Data Model](http://www.openannotation.org/spec/core/) in version 2 of the Presentation API. (Presentation 3 will use [Web Annotation](https://www.w3.org/TR/annotation-model/).)

Here are the property and values we'll add to the `images` list.

The image itself will be linked to from the `resource` property of the annotation.

| property     | value                              |
|:-------------|:-----------------------------------|
| `@type`      | oa:Annotation                      |
| `motivation` | sc:painting                        |
| `on`         | The URI for the canvas             |
| `resource`   | an image object (see next section) |

```json
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
      "resource": {}
    }
  ]
}
```

## Canvas with `images`

```json
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
      "resource": {}
    }
  ]
}
```

## Manifest with Canvas with Painting Annotation

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
              "resource": {}
            }
          ]
        }
      ]
    }
  ]
}
```
