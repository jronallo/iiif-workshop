# Validating a Presentation Manifest

Before you publish some of your manifests you'll want to validate that they're correct. There are a couple options for

## IIIF Validator

Note that this validator is not updated to the 2.1 specification so may give some false positives.

http://iiif.io/api/presentation/validator/service

This won't work with our local manifest. You can try some live examples.

You can use the form above and enter the following manifest URL into the "URL of Manifest to Validate":

https://d.lib.ncsu.edu/collections/catalog/segPap_022/manifest

The validator can also be used programmatically like this:

http://iiif.io/api/presentation/validator/service/validate?version=2.1&url=https%3A%2F%2Fd.lib.ncsu.edu%2Fcollections%2Fcatalog%2FsegPap_022%2Fmanifest

## Tripoli Validator

There's an alternative validator Tripoli that has been updated to the 2.1 specification.

Here's an online version to try:
https://validate.musiclibs.net/

This won't work with our local manifest so you can see what the results look like for this live example:
https://validate.musiclibs.net/?manifest=https%3A%2F%2Fd.lib.ncsu.edu%2Fcollections%2Fcatalog%2FsegPap_022%2Fmanifest

You can try the command line version following the instructions here:
https://github.com/DDMAL/tripoli
