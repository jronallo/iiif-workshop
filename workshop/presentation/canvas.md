# Canvas

http://iiif.io/api/presentation/2.1/#canvas

## Canvas in the Abstract
#todo:0 describe what a canvas is. Show some example images to explain canvas.

## Type

## Identifier

## Dimensions


> Question: What does the specification say about what the width and height of the canvas ought to be?


## JSON-LD with a Canvas

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
          "@id": "http://localhost:3000/seg_Pap022/canvas/1",
          "label": "22",
          "width": 6099,
          "height": 8599
        }
      ]
    }
  ]
}
```
