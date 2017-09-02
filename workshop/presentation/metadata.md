# Metadata

http://iiif.io/api/presentation/2.1/#metadata

As the Presentation API is intended to present resources to users rather than for machines to understand the meaning of metadata, the `metadata` property contains a list of labels and values. So a simple piece of metadata would look like this:

```json
{"label": "Author", "value": "Pierre Bayard"}
```

The display of this metadata could look something like this:

**Author:** Pierre Bayard

You see there's no way for a machine to know whether this is meant to be a http://schema.org/author or a property that means something else. Again, this metadata is meant only for display to users in label value pairs.

It is also possible to have the values in different languages:

```json
{ "label": "Title", "value": [
    {"@value": "How to Talk About Books You Haven't Read", "@language": "en"},
    {"@value": "Comment parler des livres que l'on n'a pas lus?", "@language": "fr"}
  ]
}
```

In this case the client could decide to either use the English or French title based on configuring the client or on the locale of the browser.

## Adding Metadata to a Manifest

Let's go back to our manifest. At the top level we'll add a `metadata` property with the following values:

| label        | value                            |
|:-------------|:---------------------------------|
| Creator      | E. A. Seguy                      |
| Title        | fr: Papillons<br>en: Butterflies |
| Created Date | circa 1920-1929                  |


As you update your manifest view the results in [Universal Viewer](universal-viewer.md) and [Mirador](mirador.md) to see how the metadata displays.

## Metadata Portion

The metadata portion ought to look something like this:

```json
{
  "metadata": [
    { "label": "Creator", "value": "E. A. Seguy" },
    { "label": "Title", "value": [
        { "@value": "Butterflies", "@language": "en" },
        { "@value": "Papillons", "@language": "fr" }
      ]
    },
    { "label": "Created Date", "value": "circa 1920-1929" }
  ]
}
```

## Full Manifest

```json
{
  "@context": "http://iiif.io/api/presentation/2/context.json",
  "@type": "sc:Manifest",
  "@id": "http://localhost:3000/manifest.json",
  "label": "Papillons",
  "description": "Four patterns inspired by butterflies.",
  "metadata": [
    { "label": "Creator", "value": "E. A. Seguy" },
    { "label": "Title", "value": [
        { "@value": "Butterflies", "@language": "en" },
        { "@value": "Papillons", "@language": "fr" }
      ]
    },
    { "label": "Created Date", "value": "circa 1920-1929" }
  ],
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
