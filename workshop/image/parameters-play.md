# Play with Parameters

Now with a base URI of https://iiif.lib.ncsu.edu/iiif/segPap_021

Here's the URI template you'll use:

`https://iiif.lib.ncsu.edu/iiif/segPap_021/{region}/{size}/{rotation}/{quality}.{format}`

All the example values below ought to work with this particular image.

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

| form | examples |
|:-----|:---------|
| full | full     |
| max  | max      |

## Rotation

## Quality

> Try changing the `server` to `iiif-staging02.lib.ncsu.edu` and using these values for quality: dither, pixelized, negative. These are non-standard, but fun!


https://iiif-staging02.lib.ncsu.edu/iiif/segPap_021/full/600,/0/dither.jpg
