# Content Search API

http://iiif.io/api/search/1.0/

The Content Search API is intended for providing search _**within**_ a resource. Not searching for a resource.

This API will not help you discover resources. The API will help you find text within a resource (or the annotations on the resource) once you've found a resource that support search within.

The content searched is commonly the text of the resource as an annotation that can be painted onto a canvas. The most common use cases are for returning OCR text or transcriptions, though it is possible to use this API for searching other types of annotations.

> Note that the IIIF Search API doesn’t specify how the search interface is presented to the user, it specifies the back-end mechanism by which the client can query annotation content on any IIIF Search API compatible server.

What are the use cases you have at your institution for search inside?

<!-- #next:20 write about the content search API -->

We'll cover:
- User interface examples
- The query interface
- Adding a content search service to a manifest
- How to get text to search

<!-- #todo:690 write a bit about different levels of discovery. First discover the resource; then discover within the resource -->

<!-- #todo:700 write a bit about the level at with "within" works. what do you call a resource? Is it a single bound book? A multivolume work? -->

<!-- #important:70 write some about how this goes back to the canvas model where the annotation can apply to a particular example. Use an OCR example to make it easy to understand. Do this graphically. Where else do we already talk about how to paint something on a canvas at particular coordinates. "what part of the image it actually related to" -->
