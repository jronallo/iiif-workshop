# Manifest

http://iiif.io/api/presentation/2.1/#manifest

One of the main concepts for the Presentation API is the Manifest.

A manifest contains enough information to display content to a user. It is a container for lots of different kinds of contextual information. The manifest can give information on how images are related to each other like the order that images should display, the structure of a document like a table of contents, and descriptive information for the resource and individual images.

In one sense it is a performance optimization. Rather than a client having to follow a lot of links to pull in content, a manifest includes the information.

IIIF just specifies the shape a manifest should take to make it easy to work with. Developers will know where to look for particular content and it makes it easier to compare documents or model your own manifest on someone else's.
