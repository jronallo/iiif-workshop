# Boilerplate

All Presentation manifests must have the following properties.

```json
{
  "@context": "http://iiif.io/api/presentation/2/context.json",
  "@type": "sc:Manifest"
}
```

Both `@context` and `@type` are keywords from JSON-LD.

## @context

Take a look at the `@context`: http://iiif.io/api/presentation/2/context.json

A `@context` is a way to define some short-hand names in a JSON-LD document. These shorthand names are called terms. Rather than listing out full HTTP IRIs we can use the short names here for things.

You'll see how "sc" is used to map a property to an IRI, e.g. an HTTP identifier. If you look at some of the other properties you'll see them prefixed with "sc:".

Go ahead and visit where the "sc" points to: http://iiif.io/api/presentation/2#

You ought to end up at http://iiif.io/api/presentation/2/ontology.xml which shows some RDF XML. We won't get too much into the Linked data elements but we want to point out that JSON-LD is linked data. Since IIIF uses JSON-LD everywhere it also fits in the linked data universe.

One thing to note is that you don't need to know anything about linked data to understand IIIF. IIIF uses of subset of JSON-LD so that it can be treated just like normal JSON. If you know how to work with JSON, that's enough to be able to work with IIIF. Also, IIIF makes no assumption about what infrastructure you use. You don't need to use something like a triplestore to create a IIIF Manifest.

> Even if you did't know anything about JSON or JSON-LD before now, you still should be able to keep up with this workshop.

## @type

`"@type": "sc:Manifest"`

This just says that the thing represented here is a IIIF Manifest.
