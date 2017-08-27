# Image Resource

We need to add the properties of the [`resource`](http://iiif.io/api/presentation/2.1/#image-resources) object that is part of our image annotation.

Here's what our annotation looks like so far:

```json
{
  "@type": "oa:Annotation",
  "motivation": "sc:painting",
  "on": "http://localhost:3000/segPap_022/canvas/1",
  "resource": {}
}
```

## Image `resource`

Here are the properties and values that will form the `resource`:

| property | value              |
|:---------|:-------------------|
| `@type`  | dctypes:Image      |
| `@id`    | IIIF Image API URL |

The value of `@id` can be any image URL. If a IIIF image service is available then the value can be the full image URL. You can pick any values. In the example below we'll select the full region of the image with a width of 300 pixels and the JPEG format.

The value of `resource` will then look something like this:

```json
{
  "@type": "dctypes:Image",
  "@id": "https://iiif.lib.ncsu.edu/iiif/segPap_022/full/300,/0/default.jpg"
}
```

## `width` and `height`

Since we're specifying an image which a width and height different than the canvas coordinates, we can help the client out by also adding `width` and `height` properties to our `resource`.
