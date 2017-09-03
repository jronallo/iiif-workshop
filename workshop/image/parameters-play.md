# Play with Parameters

Now we will play with different parameters.

You'll use this base URI and add the other parameters on: https://iiif.lib.ncsu.edu/iiif/segPap_021

Here's the URI template you'll use:

`https://iiif.lib.ncsu.edu/iiif/segPap_021/{region}/{size}/{rotation}/{quality}.{format}`

In a text editor copy the template above and begin filling in different values for the region, size, rotation, quality, and format.

All the example values below ought to work with this particular image. Links to the standard documentation are given for each of the parameters.

<div class="alert">Tip: It may be easier to see what's happening with some of the other parameters if you use a "full" region.</div>

<div class="alert">Tip: When viewing an image in the Firefox and Chrome web browsers the title bar will tell you the width x height of the image in pixels.</div>

## Questions

Here are some questions you can ask yourself as you try out the examples:

- Which parameters might you use to create a thumbnail for a search index or browse view?
- How would you get the full image to fit within a 500 by 500 pixel space regardless of the orientation of the image?
- If you were creating a deep zoom viewer that used tiles, how might you go about creating the image URLs you need?
- How would you create a square image? When might this be useful?
<!-- - #todo:100 other questions -->

## Region

http://iiif.io/api/image/2.1/#region

| form        | examples                                                      |
|:------------|:--------------------------------------------------------------|
| full        | full                                                          |
| square      | square                                                        |
| x,y,w,h     | 327,263,4004,4595<br>319,4855,1079,2847<br>4348,215,1542,3807 |
| pct:x,y,w,h | pct:5,3,66,53                                                 |

## Size

http://iiif.io/api/image/2.1/#size

Try each of the following forms for size to see how images can be scaled.

| form  | examples                        |
|:------|:--------------------------------|
| full  | full                            |
| max   | max                             |
| w,    | 600,<br>125,                    |
| ,h    | ,600<br>,125                    |
| pct:n | pct:15                          |
| w,h   | 610,859<br>610,85               |
| !w,h  | !200,200<br>!200,300<br>!610,85 |

## Rotation

http://iiif.io/api/image/2.1/#rotation

To see how rotation works it can be helpful to have a non-rotated version up as well your rotated and/or mirrored version.

| form | examples       |
|:-----|:---------------|
| n    | 0<br>!90<br>45 |
| !n   | !0<br>!90      |

## Quality

http://iiif.io/api/image/2.1/#quality

Valid values are: color, gray, bitonal, default.

> Try changing the `server` to `iiif-staging02.lib.ncsu.edu` and using these values for quality: dither, pixelized, negative. These are non-standard, but fun!

## Format

http://iiif.io/api/image/2.1/#format

Possible values for this image server: jpg and png.

## Other Images

You can also try manipulating these other images. Given is the scheme, server, and prefix then a list of image identifiers.

Start with the base URI add the image identifier and then add on the different Image API parameters.

> Challenge: Try to use the region parameter to get a particular section of the image like a face or a painting in a painting.

**NCSU Libraries** https://iiif.lib.ncsu.edu/iiif
- [0008232](https://d.lib.ncsu.edu/collections/catalog/0008232)
- [0006749](https://d.lib.ncsu.edu/collections/catalog/0006749)

**Getty** https://data.getty.edu/museum/api/iiif/
- [3384](http://media.getty.edu/viewers/mirador/?manifest=https://data.getty.edu/museum/api/iiif/662/manifest.json)
- [542](http://www.getty.edu/art/collection/objects/542/bernardino-mei-christ-cleansing-the-temple-italian-about-1655/)

**Art Institute of Chicago** https://lakeimagesweb.artic.edu/iiif
- [7a6a2b0c-45be-488e-57f5-7e053950dffb](http://www.artic.edu/aic/collections/artwork/145822)
- [df09d399-a5ff-703f-fb3b-eb4997292dab](http://www.artic.edu/aic/collections/artwork/217201)
- [c4918c92-8ba7-ff0e-f231-c91cbb843b42](http://www.artic.edu/aic/collections/artwork/15401)
- [3a8b3bbd-9bd2-43b5-aec2-f22b6d55cdf1](http://www.artic.edu/aic/collections/artwork/117266)
- [6b49e314-cd19-4f7d-b4c8-67f83c8ce4a0](http://www.artic.edu/aic/collections/artwork/60623)
- [163e36f8-ae93-898a-a79c-9410e899053a](http://www.artic.edu/aic/collections/artwork/21727)
- [d8b6266f-2137-899b-f54a-633f34f922b2](http://www.artic.edu/aic/collections/artwork/49714)
- [e12ad718-70ed-98e2-24ab-829696f68a01](http://www.artic.edu/aic/collections/artwork/52983)

**Frick Collection** http://collections.frick.org/apis/iiif/image/v2/
- [7337](http://collections.frick.org/objects/275/officer-and-laughing-girl)
- [7344](http://collections.frick.org/objects/39/st-francis-in-the-desert)
- [8768](http://collections.frick.org/objects/907/portrait-of-andrew-w-mellon)

**Bodleian** http://iiif.bodleian.ox.ac.uk/iiif/image/
- [7c2889c4-cc23-4e74-b45d-2c4368540fe5](http://iiif.bodleian.ox.ac.uk/iiif/viewer/60834383-7146-41ab-bfe1-48ee97bc04be#?c=0&m=0&s=0&cv=16&z=-0.1036%2C0%2C1.2073%2C1.3975)
- [ca08a297-ef6d-4f83-856c-5817b0144955](http://digital.bodleian.ox.ac.uk/inquire/p/ca08a297-ef6d-4f83-856c-5817b0144955)

**Princeton Libraries** https://libimages.princeton.edu/loris/
- [bluemountain%2Fastore%2Fperiodicals%2Fbmtnaae%2Fissues%2F1918%2F12_01%2Fdelivery%2Fbmtnaae_1918-12_01_0013.jp2](http://bluemountain.princeton.edu/exist/apps/bluemountain/issue.html?titleURN=bmtnaae&issueURN=bmtnaae_1918-12_01)

**Wellcome** https://dlcs.io/iiif-img/wellcome/1/
- [05bf51b9-991f-476d-bff1-dd5e96c4e122](https://wellcomelibrary.org/item/b20417081#?c=0&m=0&s=0&cv=590&z=-0.3642%2C0.3624%2C1.5498%2C0.907)

## Parameters Playground

You may also want to try using this tool to play around with parameters.

<!-- TODO: consider adding this directly to the gitbook -->
[Image API Playground](https://www.learniiif.org/image-api/playground)

Or use this example image to play with parameters: <https://jsfiddle.net/mejackreed/r3a5ayhe/2/>. You'll need to click "run" after you make changes to see the result.
