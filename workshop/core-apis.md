# Core APIs

The [Image](image/README.md) and [Presentation](presentation/README.md) APIs are the core IIIF APIs. Start there for an understanding of what IIIF enables.

> See [API Specifications - International Image Interoperability Framework](http://iiif.io/api/#current-specifications) for all the specifications.

The Image API enables access to image pixels--the bits of a digital image.

The Presentation API supports presenting the images and related resources and metadata to a human user.

Throughout you'll see different examples of how these two specifications interrelate and we'll dive deeper into that relationship. Suffice it to say for now that these two work together to support these different patterns of use:

- Single huge image with pan/zoom
- Single image in different viewers for customized viewing and work space experiences
- Multiple images in a single viewer for image comparison
- Multiple images from different institutions to form a single resource

Here's a simple visual representation of a user interface to give an example of how these two core APIs work together:
<!-- #backlog:270 Does this image-plus-presentation-user-interface.png belong here or somewhere else? -->

![](../assets/images/image-plus-presentation-user-interface.png)

## Iterative Implementation

For this workshop we've split out the core APIs from the other APIs to help you prioritize implementing the standards. You don't have to implement everything all at once. You can take an iterative approach to adopting the IIIF standards.

The general advice is to start by implementing the Image API. (Your institution might be the exception to that rule, but it isn't likely.) You can start by implementing the Image API and getting a lot of immediate benefit out of it.

Then you can add the Presentation API so that you and your users can take advantage of greater levels of functionality and tools. The Presentation API itself may seem like a lot with a first look, but you can take a similar iterative approach to implementing manifests. Even a minimal implementation done well can be a great advantage. As you progress you can layer on new functionality in your manifests.

The hope is that this workshop will give you a thorough introduction to these APIs so that you can prioritize and plan your implementation.

As we near the end of the section on the core APIs, we'll come back to talking about how to take an [iterative approach to implementation](../presentation/data-workflows.md#iterative-example).

<!-- #backlog:370 write more about the the core APIs? -->
