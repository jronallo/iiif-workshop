# Content Search API

http://iiif.io/api/search/1.0/

The Content Search API is intended for providing search _**within**_ a resource. Not searching for a resource.

This API will not help you discover resources. The API will help you find text within a resource (or the annotations on the resource) once you've found a resource that support search within.

The content searched is commonly the text of the resource as an annotation that can be painted onto a canvas. The most common use cases are for returning OCR text or transcriptions, though it is possible to use this API for searching other types of annotations.

> Note that the IIIF Search API doesn’t specify how the search interface is presented to the user, it specifies the back-end mechanism by which the client can query annotation content on any IIIF Search API compatible server.

What are the use cases you have at your institution for search inside?

We'll cover:
- User interface examples
- The query interface
- Adding a content search service to a manifest
- How to get text to search

<!-- #backlog:440 write a bit about different levels of discovery. First discover the resource; then discover within the resource -->

<!-- #todo:670 write a bit about the level at which "within" works. what do you call a resource? Is it a single bound book? A multivolume work? -->

Read more about the Content Search API:
[IIIF Search and Discovery](http://resources.digirati.com/iiif/an-introduction-to-iiif/search.html)
