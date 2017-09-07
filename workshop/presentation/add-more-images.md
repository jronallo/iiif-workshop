# Add Other Images

The print we have been working with was digitized at a time before NCSU Libraries made available anything more than single still images. Really this is from a series of prints so they could be presented as a single unit.

We're now going to reintegrate part of the print series in order to show how to add more images to our manifest in sequence.

> This same approach can be used to join resources from across institutions into a single manifest and viewing experience. The images added to a manifest do not all have to come from the same institution.

> If you have a asset management system which atomizes your resources, you can reconstruct them in full by creating a manifest.

The base image server for all of these resource is: https://iiif.lib.ncsu.edu/iiif/

At least add one of the images that comes before our current image.

| image      | id                      | label    | order |
|:-----------|:------------------------|:---------|:------|
| ![][img1]  | [segPap_001][url1]      | cover    | 1     |
| ![][img2]  | [segPap_002][url2]      | title    | 2     |
| ![][img3]  | [segPap_003][url3]      | table    | 3     |
| ![][img4]  | [segPap_004][url4]      | plate 1  | 4     |
| ![][img22] | **[segPap_022][url22]** | plate 22 | 5     |
| ![][img23] | [segPap_023][url23]     | plate 23 | 6     |


> Feel free to [add all of the images](https://d.lib.ncsu.edu/collections/catalog?f%5Bclassification_facet%5D%5B%5D=E.+A.+S%C3%A9guy%27s+Papillons) if you'd like!

## Canvas Template

Use your current canvas as a template for creating the other canvases.

For each canvas you'll need to change:
- @id
- label
- width
- height
- images => on
- images => resources => @id
- images => resources => service @id

You will need to find the width and height to use for each canvas.

> Where can you find the width and the height of each of the images?

> Hint: You only need to look up one of the new images.

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
```

OK, by now you should get the idea that sections of your manifest like the canvas can be templated out and reused. For the most part you're just changing label, width, height, and the identifier in multiple places.

## Manifest with More Images

<a href="../manifests/presentation-add-more-images.json" target="_blank">full manifest with metadata</a>

Here's what the manifest with more images will look like now:

```json
!INCLUDE "../manifests/presentation-add-more-images.json"
```

[img1]: https://iiif.lib.ncsu.edu/iiif/segPap_001/full/175,/0/default.jpg
[url1]: https://d.lib.ncsu.edu/collections/catalog/segPap_001

[img2]: https://iiif.lib.ncsu.edu/iiif/segPap_002/full/175,/0/default.jpg
[url2]: https://d.lib.ncsu.edu/collections/catalog/segPap_002

[img3]: https://iiif.lib.ncsu.edu/iiif/segPap_003/full/175,/0/default.jpg
[url3]: https://d.lib.ncsu.edu/collections/catalog/segPap_003

[img4]: https://iiif.lib.ncsu.edu/iiif/segPap_004/full/175,/0/default.jpg
[url4]: https://d.lib.ncsu.edu/collections/catalog/segPap_004

[img22]: https://iiif.lib.ncsu.edu/iiif/segPap_022/full/175,/0/default.jpg
[url22]: https://d.lib.ncsu.edu/collections/catalog/segPap_022

[img23]: https://iiif.lib.ncsu.edu/iiif/segPap_023/full/175,/0/default.jpg
[url23]: https://d.lib.ncsu.edu/collections/catalog/segPap_023

<!-- #todoplus:30 Find place to show example of manifest with images from two different institutions with labels like "fly like a butterfly and sting like a bee"  with boxer from Villanova book -->
