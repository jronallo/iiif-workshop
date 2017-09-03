# Multiple Images

Since IIIF provides a canvas with a coordinate space it is possible to apply more than one image to the canvas. Here's an example of a virtual reconstruction of a damaged manuscript. The illuminations were cut out at some point. With both now digitized the manuscript can be reconstructed.

<video src="../assets/video/biblissima-demo-chateauroux.mp4" preload="auto" controls></video>

You can read more about this: [Grandes Chroniques de France - Châteauroux BM ms. 5 ][blog]

[See the demo][demo]

## Painting Multiple Images onto a Canvas

Take a [look at the manifest][manifest] that pulls the images from across institutions together into one. Below is an example canvas from the manuscript.

There are two images on this canvas. The `on` property for the first canvas paints the image onto the whole canvas. The value of the `on` property for the second canvas looks like this:

`http://bvmm.irht.cnrs.fr/iiif/2309/canvas/canvas-981394#xywh=3949,994,1091,1232`

The URL for the second image is for the same canvas as the first image uses. Appended onto the end of the URL is a hash fragment (#). The kind of hash fragment is known as a spatial media fragment. The `xywh` parameter determines where on the canvas the image annotation will be painted. So rather than painting the illumination onto the whole canvas it is only overlayed within the box determined by the `xywh` parameter.

Image annotations are painted on in the order of the list. So the first image forms the base layer and subsequent images are painted on over top of the previous image.

> Spatial media fragments are part of the W3C [Media Fragments URI][media-fragments] Recommendation.

## Canvas

Canvas that reconstructs a page from a manuscript.

> Try it! Copy this canvas into your manifest and view the manifest in [Mirador](mirador.md). Or copy [this manifest that already includes the following canvas](../manifests/presentation-multiple-images.json), put it in the folder alongside your other manifest, and open it in Mirador.

```json
{
  "@id": "http://bvmm.irht.cnrs.fr/iiif/4490/canvas/canvas-981394",
  "@type": "sc:Canvas",
  "label": "f. 033v - 034",
  "height": 5412,
  "width": 7216,
  "images": [
    {
      "@type": "oa:Annotation",
      "motivation": "sc:painting",
      "resource": {
        "@id": "http://iiif.irht.cnrs.fr/iiif/Châteauroux/B360446201_MS0005/jp2/B360446201_MS0005_0038/full/full/0/default.jpg",
        "@type": "dctypes:Image",
        "format": "image/jpeg",
        "height": 5412,
        "width": 7216,
        "service": {
          "@context": "http://iiif.io/api/image/2/context.json",
          "@id": "http://iiif.irht.cnrs.fr/iiif/Châteauroux/B360446201_MS0005/jp2/B360446201_MS0005_0038",
          "profile": "http://iiif.io/api/image/2/level2.json"
        }
      },
      "on": "http://bvmm.irht.cnrs.fr/iiif/4490/canvas/canvas-981394"
    },
    {
      "@type": "oa:Annotation",
      "motivation": "sc:painting",
      "resource": {
        "label": "Miniature [Chilpéric Ier tue Galswinthe, se remarie et est assassiné]",
        "@id": "http://gallica.bnf.fr/iiif/ark:/12148/btv1b10511139b/f1/full/full/0/native.jpg",
        "format": "image/jpeg",
        "@type": "dctypes:Image",
        "width": 2138,
        "height": 2414,
        "service": {
          "@context": "http://library.stanford.edu/iiif/image-api/1.1/context.json",
          "profile": "http://library.stanford.edu/iiif/image-api/1.1/compliance.html#level2",
          "@id": "http://gallica.bnf.fr/iiif/ark:/12148/btv1b10511139b/f1"
        }
      },
      "on": "http://bvmm.irht.cnrs.fr/iiif/2309/canvas/canvas-981394#xywh=3949,994,1091,1232"
    }
  ]
}
```

[blog]: http://demos.biblissima-condorcet.fr/chateauroux/
[demo]: http://demos.biblissima-condorcet.fr/chateauroux/demo/
[manifest]: http://iiif.biblissima.fr/chateauroux/B360446201_MS0005/manifest.json
[media-fragments]: https://www.w3.org/TR/media-frags/

<!-- http://iiif.biblissima.fr/gallica/btv1b10510321r/manifest.json -->
