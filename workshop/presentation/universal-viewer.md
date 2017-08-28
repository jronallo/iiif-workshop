# Universal Viewer

Universal Viewer home page: http://universalviewer.io/

Open the Universal Viewer site and go to the "[View a IIIF Manifest](http://universalviewer.io/#view)" demo, enter in the URL as http://localhost:3000/manifest.json and click "view". If you know of other manifests you can enter those here too.

You can also go directly to this URL to launch the UV demo with the manifest we've created:

http://universalviewer.io/uv.html?manifest=http://localhost:3000/manifest.json

## Embedded Viewer

We've also embedded the UV demo here pointing to our local manifest.

> Note: If you don't already have a local web server and a manifest at http://localhost:3000/manifest.json then this embed won't work.

<div class="uv" data-locale="en-GB:English (GB),cy-GB:Cymraeg" data-config="/config.json" data-uri="http://localhost:3000/manifest.json" data-collectionindex="0" data-manifestindex="0" data-sequenceindex="0" data-canvasindex="0" data-xywh="462,2959,2829,1194" data-rotation="0" style="width:100%; height:600px; background-color: #000"></div><script type="text/javascript" id="embedUV" src="http://universalviewer.io/vendor/uv/lib/embed.js"></script><script type="text/javascript">/* wordpress fix */</script>

<!-- #todo:0 Consider adding either an image with what UV ought to look like at this point or include another embed that points to the manifest we've created served up from this gitbook. -->
