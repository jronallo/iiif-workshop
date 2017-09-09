# Annotation

<!-- #todo:600 write annotation section -->

We've seen various annotations throughout the workshop already. Images are applied to canvases via annotation. Content search results are expressed as annotations.

<!-- #todo:330 are there other instance in the workshop where we've already mentioned annotations? -->

Here we're going to look at annotations more in depth and talk about other uses of annotations.

Readers make marks in books. You bookmark pages in your browser. You quote a passage of text and comment on it. IIIF provides the platform for allowing for all different kinds of scholarly annotation.

Annotations can be useful for:
- Research
- Teaching
- Machines
- Crowdsourcing
- Conservation

<!-- #todo:470 maybe mention hypothesis? -->

<!-- #todo:230 While annotation is specified outside of IIIF it is useful to have a basic understanding of how annotations work. -->

![](../assets/images/annotation-body-target.md)

Annotation targets are URIs pointing in whole or in part (fragment) to resources like:
- web pages
- audio video
- images
- IIIF canvases

Annotation bodies can be:
- text
- images
- audio
- video
- URIs

Annotations are created for different reasons like:
- painting
- commenting
- bookmarking

## Creating Annotations

Open [Mirador](../presentation/mirador.md) and create some annotations over top of an image.

- How are annotations displayed?
- What different types of annotations can you create?
- Why might you use some of the variations within the annotation tools available in Mirador?

## Examples

Take a look at some of the examples of how the same annotations allow for different interactions with the Holbein painting:
http://storiiies.cogapp.com/

<!-- #todoplus:40 make video of one of the holbein examples -->

Explore the navigation of this quilt:
http://ghp.wellcomecollection.org/annotation-viewer/quilt

Scroll down this page to see hot spot annotation: https://www.vam.ac.uk/articles/the-butler-bowdon-cope

## Annotation Stores

TODO

<!-- #todo:650 write section on annotation stores -->

## Questions

What kinds of data do you have for annotations?  How could you get those into annotations?

<!-- #todo:250 add example of hot spot annotation. V&A? -->

## Web Annotation

While IIIF currently uses [Open Annotation][open-annotation], the specifications will be moving to [Web Annotation][web-annotation]. The [Web Annotation Data Model][web-annotation-data-model] includes lots of examples with use cases and JSON that make it an easy to read specification.

[open-annotation]: http://iiif.io/api/annex/openannotation/index.html
[web-annotation]: https://www.w3.org/blog/news/archives/6156
[web-annotation-data-model]: https://www.w3.org/TR/2017/REC-annotation-model-20170223/
