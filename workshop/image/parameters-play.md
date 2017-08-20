# Play with Parameters

Now with a base URI of https://iiif.lib.ncsu.edu/iiif/segPap_021

Here's the URI template you'll use:

`https://iiif.lib.ncsu.edu/iiif/segPap_021/{region}/{size}/{rotation}/{quality}.{format}`

In a text editor copy the template above and begin filling in different values for the region, size, rotation, quality, and format.

All the example values below ought to work with this particular image. Links to the standard documentation are given for each of the parameters.

<div class="alert">Tip: It may be easier to see what's happening with some of the other parameters if you use a "full" region.</div>

<div class="alert">Tip: When viewing an image in the Firefox and Chrome web browsers the title bar will tell you the width x height of the image in pixels.</div>

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

Try

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

> Try changing the `server` to `iiif-staging02.lib.ncsu.edu` and using these values for quality: dither, pixelized, negative. These are non-standard, but fun!

## Format

http://iiif.io/api/image/2.1/#format

Possible values for this image server: jpg and png.

## Questions

- Which parameters might you use to create a thumbnail for a search index or browse view?
- How would you get the full image to fit within a 500 by 500 pixel space regardless of the orientation of the image?
- YKK other questions

## Other Images

You can also try manipulating these other images. Given is the scheme, server, and prefix then a list of image identifiers.

**NCSU Libraries** https://iiif.lib.ncsu.edu/iiif
- [0008232](https://d.lib.ncsu.edu/collections/catalog/0008232)
- [0006749](https://d.lib.ncsu.edu/collections/catalog/0006749)

**Bodleian** http://iiif.bodleian.ox.ac.uk/iiif/image/
- [7c2889c4-cc23-4e74-b45d-2c4368540fe5](http://iiif.bodleian.ox.ac.uk/iiif/viewer/60834383-7146-41ab-bfe1-48ee97bc04be#?c=0&m=0&s=0&cv=16&z=-0.1036%2C0%2C1.2073%2C1.3975)
- [ca08a297-ef6d-4f83-856c-5817b0144955](http://digital.bodleian.ox.ac.uk/inquire/p/ca08a297-ef6d-4f83-856c-5817b0144955)

**Princeton Libraries** https://libimages.princeton.edu/loris/
- [bluemountain%2Fastore%2Fperiodicals%2Fbmtnaae%2Fissues%2F1918%2F12_01%2Fdelivery%2Fbmtnaae_1918-12_01_0013.jp2](http://bluemountain.princeton.edu/exist/apps/bluemountain/issue.html?titleURN=bmtnaae&issueURN=bmtnaae_1918-12_01)


## Parameters Playground

You may also want to try using this tool to play around with parameters.

<!-- TODO: consider adding this directly to the gitbook -->
[Image API Playground](https://www.learniiif.org/image-api/playground)
