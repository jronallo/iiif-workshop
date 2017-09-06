# Image Information: `info.json`

In order to know things like the height and width of an image and the available sizes and tiles, the IIIF Image API specifies a standard way to request the information and the format the information should take.

The image information let's clients know what versions (size, tiles) of the image can be requested.

The image information also lets the client know which image server features are supported. This allows the client to know which URLs it can create to request versions of the image.

You usually won't be creating these documents but will rely on a script or an image server to create the image information document. It is still useful for understanding how IIIF works to take a closer look at what's contained.

We'll cover:
- How to create an [Image Information URI](info-uri.md)
- The [information and properties](info-properties.md) in the Image Information Response

http://iiif.io/api/image/2.1/#image-information
