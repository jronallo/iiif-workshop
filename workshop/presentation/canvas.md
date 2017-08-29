# Canvas

http://iiif.io/api/presentation/2.1/#canvas

## Canvas in the Abstract

<!-- #todo:0 harmonize with language from presentation/shared-canvas.md -->
A canvas is a coordinate space on which images can be painted. Images are painted onto a canvas through annotation. In the simple case we're only painting a single image annotation so that it fills the whole canvas. But the canvas also makes it possible to paint multiple images onto the same canvas as well as overlay additional annotations.

See the sections on [shared canvas](presentation/shared-canvas.md) and [manifest structure](presentation/manifest-structure.md) for more information on what a canvas is and how it fits into a manifest.

## `canvases` Property

Each sequence can be made up of more than one canvas. So first we'll add a `canvases` property to our sequence with a value of a list.

<!-- #todo:0 what else to say about the canvases property? -->

So our sequence will now look like this:

```json
{
  "@type": "sc:Sequence",
  "canvases": [ ]
}
```

## First Canvas

Next we'll add our single canvas. So create an empty object within the `canvases` list:

```json
{
  "@type": "sc:Sequence",
  "canvases": [ {} ]
}
```

## Type

The `@type` of our canvas should be `sc:Canvas`:

```json
{
  "@type": "sc:Sequence",
  "canvases": [
    {
      "@type": "sc:Canvas"
    }
  ]
}
```

## Identifier

The `@id` for a canvas is required. We need this identifier in place so that when we later add an annotation to the canvas we have the reference to the canvas.

The strong recommendation is that the identifier for the resource be dereferencable. That means that it be possible for a client to request the URI for the canvas and have the canvas resource returned. Having dereferencable canvases allows for better reuse of canvases, a key piece to the IIIF landscape. This is the best practice.

In the case of this workshop we will not create the canvas as a separate dereferencable resource. That is, if you try to request the resource at the URL we give to the canvas you won't get anything back as there's nothing there.

```json
{
  "@type": "sc:Sequence",
  "canvases": [
    {
      "@type": "sc:Canvas",
      "@id": "http://localhost:3000/segPap_022/canvas/1"
    }
  ]
}
```

## Label

A canvas is required to have a [`label`](http://iiif.io/api/presentation/2.1/#label) property that clients are required to display. Usually this will be a page number or very short description of the view.

In our example we have the 22nd page image or plate so, we'll just give it a string label of "22".

```json
{
  "@type": "sc:Sequence",
  "canvases": [
    {
      "@type": "sc:Canvas",
      "@id": "http://localhost:3000/segPap_022/canvas/1",
      "label": "22"
    }
  ]
}
```

## Dimensions

We also want to add the [`width`](http://iiif.io/api/presentation/2.1/#width) and [`height`](http://iiif.io/api/presentation/2.1/#height) of the coordinate space for our canvas. These dimensions give us the aspect ratio of the object.

> Question: What does the [specification say about what the width and height of the canvas](http://iiif.io/api/presentation/2.1/#canvas) ought to be? (Hint: In our case we are only adding to the canvas a single image that depicts the page.)
<!-- Answer: make it the dimensions of the largest available image -->

> Question: Where might we find dimensions to use for our canvas?
<!-- Answer: The info.json of the image -->

Add a `width` and `height` property to the canvas. Note that in JSON numbers do not need to be in quotes like text does.

Now with our dimensions added, your sequence ought to look like this:

```json
{
  "@type": "sc:Sequence",
  "canvases": [
    {
      "@type": "sc:Canvas",
      "@id": "http://localhost:3000/segPap_022/canvas/1",
      "label": "22",
      "width": 6099,
      "height": 8599
    }
  ]
}
```

## Nesting

We've now nested our canvas within our first sequence within the manifest. We'll have more nesting like this as we go further along. This deep nesting may be one of the more difficult pieces of the IIIF Presentation API to understand and remember. The diagrams in the specification can help remember the ordering: http://iiif.io/api/presentation/2.1/#resource-type-overview. Or refer back to [manifest structure](manifest-structure.md).

```
manifest
  sequences
    canvases
      images
        resource
          service
```

## Dereferencable Canvas

We now have completed a basic canvas you can see below.

If we were going to make our canvas available separate from our manifest we'd also need to add the IIIF `@context`, so we've added that as well here. This is the same context we used at the top of our manifest. Note that the `@context` doesn't need to be included if the canvas is embedded within the manifest.

```json
{
  "@context": "http://iiif.io/api/presentation/2/context.json",
  "@type": "sc:Canvas",
  "@id": "http://localhost:3000/segPap_022/canvas/1",
  "label": "22",
  "width": 6099,
  "height": 8599
}
```

## Manifest with a Canvas

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
          "height": 8599
        }
      ]
    }
  ]
}
```
