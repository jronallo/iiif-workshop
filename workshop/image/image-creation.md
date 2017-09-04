# Creating Images

## For an Image Server

If you've decided to deploy and image server, you'll probably want to create an access derivative source image which is separate from your master preservation version of the image.

Picking a source image involves various trade-offs including the following:
- The size of the access derivative image that must be stored as the source image for the image server
- The speed that format can be decoded to extract regions from an image
- Complexity of the source image processing workflow
- Whether there is an adequate open source implementation of the codec

Some institutions create a JPEG2000 image for their source image. JPEG2000 images can be highly compressed while still allowing for good quality and fast seeking into the image to extract regions for tiles. While there is an open source implementation of JPEG2000,  currently the fastest tool for creating and decompressing JPEG2000 images is Kakadu which is proprietary, so not suitable for some institutions.

While TIF has open source implementations, the images will take up more storage space and depending on the  may be slower to extract a version of the image.

<!-- #todo:0 Anything else to say about TIF performance? -->

<!-- #todo:0 What about other image formats? -->

## JPEG2000

As JPEG2000 is a more complicated

### Creating a JPEG2000 Image with Kakadu

TODO
<!-- #todo:0 provide instructions for how to create a JPEG2000 image with Kakadu -->

### Creating a JPEG2000 Image with OpenJPEG

TODO

<!-- #todo:0 Creating a JPEG2000 Image with OpenJPEG -->

## Level 0 Implementation

See the [page on static image servers](image-server-static.md) for an example of how to create a static, Level 0 implementation.
