# Dynamic Image Server

## Choosing an Image Server

Different image servers will have different features.

You can see a list of image servers: https://github.com/IIIF/awesome-iiif#image-servers

Questions to ask yourself as you are considering adopting an existing image server, shimming your current image server, or writing your own:

- Do we even need an image server? Could a Level 0 implementation suffice?
- What language is the image server written in?
- What does the level of community support look like?
- Do we have an existing image server that we could shim?

<!-- #todo:770 questions about choosing an image server -->

Based on these criteria take a look at two image servers and report back.

## Shims

If you already have an image server and want to make it work with the IIIF APIs and viewers, you may want to consider using or creating an [image server shim](https://github.com/IIIF/awesome-iiif#image-server-shims). A "shim" is a small bit of code that works by intercepting API calls and working with a current incompatible system.

## Redirects

One effective way to use your current image server could be to redirect from the IIIF URIs to your current image server.

<!-- #todo:740 Case study on the Getty's redirect implementation? -->
