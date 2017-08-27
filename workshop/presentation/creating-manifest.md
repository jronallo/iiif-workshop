# Creating a Manifest

In this section we'll create a manifest by hand step by step. Even though you can copy and paste the code from here, it is recommended to type these out yourself.

In most cases in production you won't actually be creating manifests by hand. You will probably have different systems and workflows from other institutions so will need to determine the best way for you to create manifests.

#todo:0 refer back to the charts here for required and recommended properties: http://iiif.io/api/presentation/2.1/#b-summary-of-metadata-requirements

Here's what we'll cover:
- Boilerplate: Every manifest starts here
- Identifier `@id`
- Basic Description
- Sequence
- Canvas
- Image Annotation
- Image Service
- Metadata
- License

<!--
#todo:0 Consider covering these aspects of Presentation as well
- Language of property values
- viewingHint
- Thumbnail
- logo
- Date: navDate
- Ranges and structures
- Layers
- Other Content
- seeAlso
- License
- related, rendering, within?
- Collections
-->

## Example

The example we'll use to create our manifest is this print by Séguy:

![](https://iiif.lib.ncsu.edu/iiif/segPap_022/full/400,/0/default.jpg)

Feel free to use your own text and any published IIIF images you like for your manifest, though it will be easier to follow along if you use the same values as we have here.
