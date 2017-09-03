# Order of Implementation

http://iiif.io/api/image/2.1/#order-of-implementation

![](../assets/images/transformation.png)

The parameters are always applied in a particular order so that you get the expected output.

Basically the order of operation follows the order of the parameters in the URL.

Here's our template again:

<div class="alert">{scheme}://{server}{/prefix}/{identifier}/{region}/{size}/{rotation}/{quality}.{format}</div>

1. **Region** is extracted from the full size image
2. The image is scaled with the **size** parameter
3. The image is **mirrored** before it is rotated (even though these are part of the same parameter in the URL)
4. The image is **rotated**
5. The **quality** is set to grayscale
6. The **format** is selected

## Canonical URI Syntax

With the different ways it is possible to specify a region or size, it is possible to return the same image with different combinations of parameters. The specification helps in this situation by specifying a canonical URL form that allows for better performance and caching. 

http://iiif.io/api/image/2.1/#canonical-uri-syntax
