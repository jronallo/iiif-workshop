# Sequences

http://iiif.io/api/presentation/2.1/#sequence

In some cases you might have a resource that has more than one sequence. For instance it may be disputed which order the pages of a manuscript ought to be in and the manifest might want to express two possible orderings.

Even if there is only one image like in our case we still use the `sequences` property for it and only include one sequence. In many cases like a newspaper or book with pages numbers you would only have a single sequence listed.

## JSON Lists

Some properties in IIIF can be lists. The way to represent these lists in JSON is with square brackets "[]" for an array. The list values are then placed within the square brackets. So these would be valid lists in JSON:

```json
[1, 2, 3]
```

```json
["a", "b", "c"]
```

In this case we'll be creating a list that contains exactly one JSON object as we have only one sequence. So the value of `sequences` is this list with one object (the curly braces):

```json
[
  {
    "@type": "sc:Sequence"
  }
]
```

A sequence can have several other properties including its own `label` meant to distinguish it from other sequences. In this case we'll keep it simple for now. In the next section we'll fill in this object a bit further.

## JSON-LD with Sequence

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
      "@type": "sc:Sequence"
    }
  ]
}
```
