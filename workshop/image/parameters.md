# URI Parameters

The Image API allows for taking a source image and through applying parameters to extract a region of an image and do some further basic image manipulation. We'll go through the parameters here. (And you can learn more about the [order of implementation](order-of-implementation.md) later.)

![](../assets/images/transformation.png)

## Parameters Template

The URI for a IIIF image is made of defined parts to allow for human readability as well as machine processability.

<div class="alert">{scheme}://{server}{/prefix}/{identifier}/{region}/{size}/{rotation}/{quality}.{format}</div>

You can see more details of the [Image Request URI Syntax](http://iiif.io/api/image/2.1/#image-request-uri-syntax) in the specification.

Let's construct our first IIIF URI together. We'll break it down into the base URI and then the parameters that can manipulate the image.

 Don't worry if you're not certain what everything does yet. We'll show a detailed example next.

> Open up a text editor to construct your image URL.

## Base URI

The base URI includes only the scheme, server, prefix (optional), and identifier. The server and prefix are going to be institution specific.

<div class="alert">{scheme}://{server}{/prefix}/{identifier}</div>

This base URI is what is used to identify the resource (think linked data). We will see an example of this in a bit when we look at the [`info.json`](info.md).

Any time you want an image at a particular size or some part of an image you'll start off with this base URI.

### Scheme

Scheme is the first part of the base URI. This is the `http` or `https` part of the URL.

The strong recommendation is that images be served over HTTPS in order to be able to be used within other HTTPS pages. If an image served over HTTP is included in a page served over HTTPS then browsers will complain about mixed content.

We'll use `https` to start our URI:
<div class="alert"><strong>https://</strong></div>

### Server

The (sub)domain where the images or image server lives.

We'll extend our URI with an image server:
<div class="alert">https://<strong>iiif.lib.ncsu.edu</strong></div>

### Prefix

The prefix is optional but can be useful if the server hosts other services that need to live at different paths.

In this case we will add `iiif` to the path:
<div class="alert">https://iiif.lib.ncsu.edu/<strong>iiif</strong>/</div>

### Identifier

This is whatever identifier you want to use. The combination of the scheme+server+prefix and the identifier should be unique in the world.

The identifier muse be URI encoded if it includes spaces or slashes. <!-- (which you should probably not be adding to identifiers in any case) -->

<div class="alert">https://iiif.lib.ncsu.edu/iiif/<strong>segPap_021</strong></div>

## Parameters that Manipulate the Image

Everything after the identifier are parameters that allow you to request the specific version of the image you want. These are the parts that IIIF specifies and all implementations share.

### Region

[Region](http://iiif.io/api/image/2.1/#region) allows for returning the full image or any part of the image.

<div class="alert">https://iiif.lib.ncsu.edu/iiif/segPap_021/<strong>full</strong>/</div>

### Size

Adding `400,` will scale the image down to 400 pixels wide and will scale the height proportionally.

<div class="alert">https://iiif.lib.ncsu.edu/iiif/segPap_021/full/<strong>400,</strong>/</div>

### Rotation

In this case we will set this to `0` to not rotate the image at all.

<div class="alert">https://iiif.lib.ncsu.edu/iiif/segPap_021/full/400,/<strong>0</strong>/</div>

### Quality

The quality parameter allows for delivering a color image in `gray` or `bitonal`.

<div class="alert">https://iiif.lib.ncsu.edu/iiif/segPap_021/full/400,/0/<strong>default</strong></div>

### Format

The format is like a file extension and allows for requesting various formats like a JPEG or a PNG.

Here we'll require a JPEG:

<div class="alert">https://iiif.lib.ncsu.edu/iiif/segPap_021/full/400,/0/default.<strong>jpg</strong></div>

## URI Segments

So going back to our IIIF Image URI template here are the parameters and the values we've given to each.

| IIIF parameter | segment           |
|:---------------|:------------------|
| {scheme}       | https             |
| {server}       | iiif.lib.ncsu.edu |
| {prefix}       | iiif              |
| {identifier}   | segPap_021        |
| {region}       | full              |
| {size}         | 400,              |
| {rotation}     | 0                 |
| {quality}      | default           |
| {format}       | jpg               |

## Our Example

You've now created your first IIIF image URL!

https://iiif.lib.ncsu.edu/iiif/segPap_021/full/400,/0/default.jpg

![](https://iiif.lib.ncsu.edu/iiif/segPap_021/full/400,/0/default.jpg)
