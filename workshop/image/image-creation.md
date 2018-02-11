# Creating Images

## For an Image Server

If you've decided to deploy an image server, you'll probably want to create an access derivative source image which is separate from your master preservation version of the image.

Picking a source image involves various trade-offs including the following:
- The size of the access derivative image that must be stored as the source image for the image server
- The speed that format can be decoded to extract regions from an image
- Complexity of the source image processing workflow
- Whether there is an adequate open source implementation of the codec

<!-- #backlog:430 should this sentence on dynamic image servers for web site design go on the dynamic image server page instead? -->
One advantage of using an advanced image server is that various sizes of images do not need to be precomputed and as your web site design changes the image server can dynamically create the appropriate sizes.

Some institutions create a JPEG2000 image for their source image. JPEG2000 images can be highly compressed while still allowing for good quality and fast seeking into the image to extract regions for tiles. While there is an open source implementation of JPEG2000,  currently the fastest tool for creating and decompressing JPEG2000 images is Kakadu which is proprietary, so not suitable for some institutions.

While TIF has open source implementations, the images will take up more storage space and depending on the  may be slower to extract a version of the image.

<!-- #backlog:150 Anything else to say about TIF performance? -->

<!-- #backlog:250 What about other image formats? -->

## Questions

- How are you currently creating access derivative images?
- Where will access derivative creation fall in your workflow with a change to IIIF?
- Where are our main costs? Are they with storage? Processing/CPU?

<!-- #backlog:320 add more questions around creating images -->

## JPEG2000

As JPEG2000 is a more complicated format than many others. It uses advanced techniques for compression.

### Creating a JPEG2000 Image with Kakadu

TODO
<!-- #backlog:420 provide instructions for how to create a JPEG2000 image with Kakadu -->

### Creating a JPEG2000 Image with OpenJPEG

TODO

<!-- #backlog:240 Creating a JPEG2000 Image with OpenJPEG -->

## Level 0 Implementation

See the [page on static image servers](image-server-static.md) for an example of how to create a static, Level 0 implementation.
