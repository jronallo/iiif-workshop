# How Manifests and Image Servers Work Together

Before we begin to create our own manifest let's take a moment to talk about how parts of IIIF fit together.

A manifest contains different information including links to your images. If you have an image server it'll include a link to that service for displaying the image.

## IIIF Client-Server Request/Response Cycle

[![](../assets/images/request_response.png)](https://iiif.github.io/training/intro-to-iiif/SOFTWARE.html#software)

Here's how it usually works.

A web page will include a link to a manifest.

A IIIF client/viewer (really some JavaScript included on the web page) requests the manifest.

Then the client/viewer parses the manifest and finds out which images

You'll notice that the manifest server is separate from the image server. There's no assumption that they'll use the same 

You'll also see some examples later of how the manifest server can be provided by a different institution than the institution that hosts the images. Even the source of one image can be different from another. This allows for manifests to be groupings of resources across institutions in creative ways.
