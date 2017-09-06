# Image Information Properties

<!-- #todo:100 improve the image information info.json section -->

http://iiif.io/api/image/2.1/#technical-properties

The information returned is JSON-LD.

> See also a little about [JSON and JSON-LD](bonus/json-ld.md).

So what information is actually included in the information response?

Here's an example from the specification that we'll walk through:

```json
{
  "@context" : "http://iiif.io/api/image/2/context.json",
  "@id" : "http://www.example.org/image-service/abcd1234/1E34750D-38DB-4825-A38A-B60A345E591C",
  "protocol" : "http://iiif.io/api/image",
  "width" : 6000,
  "height" : 4000,
  "sizes" : [
    {"width" : 150, "height" : 100},
    {"width" : 600, "height" : 400},
    {"width" : 3000, "height": 2000}
  ],
  "tiles": [
    {"width" : 512, "scaleFactors" : [1,2,4,8,16]}
  ],
  "profile" : [ "http://iiif.io/api/image/2/level2.json" ]
}
```

## `@context`

The `@context` is from JSON-LD and is part of what makes it linked data. You can visit the document here to see what it defines: http://iiif.io/api/image/2/context.json

## `@id`

We've already seen what the identifier for a IIIF image is.

> Note that the `@id` is the part of an image URI up to the image identifier portion of the URI for an image request.
<!-- #todo:100 is this clear enough? -->

## Protocol

The `protocol` property lets a client know that the document is describing an image service.

## Dimensions

The `width` and `height` properties are required and give the width and height of the full image. This does not imply that the full size image is available. The properties `maxArea`, `maxWidth`, and `maxHeight` can be used to indicate that the image size available is constrained further.

## `sizes`

The `sizes` property advertises which sizes of the full region of the image are available. Even if the image server can provide dynamically sized images this property can provide a hint about what sizes can be returned quickly.

This property is optional. It would

## `tiles`

The `tiles` property describes which tiles are available. It gives the `width` (and `height`) of the tiles. All tiles requested from this server should request the same size tiles.

The `scaleFactors` list the values for different resolutions. The specification states this best with an example:

> The set of resolution scaling factors for the image’s predefined tiles, expressed as positive integers by which to divide the full size of the image. For example, a scale factor of 4 indicates that the service can efficiently deliver images at 1/4 or 25% of the height and width of the full image. A particular scale factor value should appear only once in the tiles list.

The result is that tiles (except on the edges) are always the same width, but the scale factors represent the different sizes of the full image that the the tiles are a part of.
<!-- #todo:60 scaleFactors can be confusing. how to make it clearer how this works? -->

## `profile`

http://iiif.io/api/image/2.1/#profile-description

The values of `profile`

The URI provided here is a shorthand to indicate which set of features are supported. IIIF has defined these features

Sometimes you will see values listed here instead of a URI. The URIs are really a shorthand. Listing out a fuller profile can happen when an image server supports all of one level and only some features of the next higher level.

In the next section we'll take a closer look at these profile URIs and levels of implementation.
