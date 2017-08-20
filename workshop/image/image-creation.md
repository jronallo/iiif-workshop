# Creating Images

## For an Image Server

If you've decided to deploy and image server, you'll probably want to create a access derivative source image which is separate from your master preservation version of the image.

There are trade-offs between the size of the access derivative image that must be stored as the source image for the image server, the speed at being able to decode and extract regions from an image, and the complexity of the source image processing workflow, among other factors.

For instance many institutions create a JPEG2000 image for their source image because it has great compression and fast seeking to extract regions for tiles. Currently the fastest tool for creating and decompressing JPEG2000 images is Kakadu which is proprietary, so not suitable for

Using a TIF will take up more storage space.

#todo:0 Anything else to say about TIF performance?

#todo:0 What about other image formats?

### #todo:0 Creating a JPEG2000 Image with Kakadu

### #todo:0 Creating a JPEG2000 Image with OpenJPEG

## For a Level 0 Implementation

#todo:0 What would be the exercise for a Level 0 implementation be if any?
