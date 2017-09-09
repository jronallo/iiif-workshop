# How Manifests and Image Servers Work Together

Before we begin to create our own manifest let's take a moment to talk about how parts of IIIF fit together.

A manifest contains different information including links to your images. If you have an image server it'll include a link to that service for displaying the image.

## IIIF Client-Server Request/Response Cycle

[![](../assets/images/request_response.png)](https://iiif.github.io/training/intro-to-iiif/SOFTWARE.html#software)

Here's how it usually works.

1. A web page will include a link to a manifest.

2. A IIIF client/viewer (really some JavaScript included on the web page) requests the manifest.

3. Then the client/viewer parses the manifest and finds out which images it will need to request to display the resource.

4. It will then request the info.json file for each image to know what is available as far as different images sizes and tiles.

5. Once it has the information the client/viewer can request the actual images and display them.

You'll notice that the manifest server is separate from the image server. There's no assumption that the manifest and the images will use the same infrastructure or even be located on the same domain.

You'll also see some examples later of how the manifest server can be provided by a different institution than the institution that hosts the images. Even the source of one image can be different from another. This allows for manifests to be groupings of resources across institutions in creative ways.

<!-- #todo:740 see if there's some way to demonstrate how this client-server request/response cycle works. Maybe a @screencast or screenshot of what things look like in developer tools? -->
