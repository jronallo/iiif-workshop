# Viewing Hints and Viewing Directions

viewingHint: http://iiif.io/api/presentation/2.1/#viewinghint

viewingDirection: http://iiif.io/api/presentation/2.1/#viewingdirection

Within your sequence you're going to add `viewingHint` and `viewingDirection` properties.

Values to try for `viewingHint` include:
- individuals
- paged
- continuous

You can also try the following values for `viewingDirection`:
- left-to-right
- right-to-left
- top-to-bottom
- bottom-to-top

Try different combinations of these values and review the manifest in [Universal Viewer](../viewers/uv.html) and [Mirador](../viewers/mirador.html).

> Note that there are multiple other valid values for `viewingHint` that can be applied at different places within a manifest. Not all apply at the manifest or sequence level. We will not cover how values apply to collections or ranges.

Here's a snippet of what a portion of your sequence ought to look like:

```json
{
  "@type": "sc:Sequence",
  "viewingHint": "individuals",
  "viewingDirection": "left-to-right",
  "canvases": [
    ...
  ]
}
```

<a href="../manifests/presentation-viewinghint.json" target="_blank">See the full manifest with a viewingHint and viewingDirection</a>

## Example

Take a look at a [roll-codex](http://rollinghistory.bodleian.ox.ac.uk/) in the [original](../viewers/uv.html#?manifest=http://iiif.bodleian.ox.ac.uk/iiif/manifest/c44571e0-8732-40ad-9e14-f272437fe3fb.json) and [converted into a scroll](../viewers/uv.html#?manifest=http://iiif.bodleian.ox.ac.uk/examples/MSMusaeo_roll.json). The [manifest for the scroll](http://iiif.bodleian.ox.ac.uk/examples/MSMusaeo_roll.json) uses `viewingDirection` and `viewingHint` to achieve this effect.

## Questions

- How does the display change in [Universal Viewer](universal-viewer.md) and [Mirador](mirador.md)?
- What assumption is made about your resource when you use the "paged" value for `viewingHint`?
- When might you use a `viewingHint` of "continuous"?
- Are these viewing hints sufficient for representing the kinds of resources you have?

<!-- #backlog:330 add other questions about viewingHint and viewing direction -->

<!-- #todo:140 find examples of interesting resources that use different viewing hints and viewing directions -->
