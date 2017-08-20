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

> Try changing the `server` to `iiif-staging02.lib.ncsu.edu` and using these values for quality: dither, pixelized, negative. These are non-standard, but fun!


https://iiif-staging02.lib.ncsu.edu/iiif/segPap_021/full/600,/0/dither.jpg

## Questions

- Which parameters might you use to create a thumbnail for a search index or browse view?
- How would you get the full image to fit within a 500 by 500 pixel space regardless of the orientation of the image?
- YKK other questions
