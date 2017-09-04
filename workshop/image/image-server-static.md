# Static Image Server

Pros:
- Simple to deploy
- Possible to use existing full images and tiles with redirects

Cons:
- Lot of storage space
- Limits which sizes can be requested

The approach here is to pregenerate different image sizes and tiles and

## Run Example Static Server

### Single Example

Download <a href="../assets/starfish.zip" target="_blank">this zip file</a>.

Unzip the file into a directory.

Start a [simple web server](../preparation/web-server.md).

To make sure it is working visit: http://localhost:3000/starfish/full/750,/0/default.jpg

Now reload the page and it should work in these viewers.

> Note: The info.json for this static example expects the server to be http://localhost:3000. If your web server is listening on a different port, you'll need to change that.

OpenSeadragon:
<!-- #todo:0 move OSD to separate include files -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/openseadragon/2.3.0/openseadragon.min.js"></script>
<div id="osd" style="width:100%;height:400px;"></div>
<script>
OpenSeadragon({
        id: "osd",
        prefixUrl: "https://cdnjs.cloudflare.com/ajax/libs/openseadragon/2.3.0/images/",
        tileSources: "http://localhost:3000/starfish/info.json"
    });
</script>

Try zooming in for it to work in Leaflet:
{% include "../includes/image/leaflet.html" %}
{% include "../includes/image/leaflet-starfish.html" %}

<!-- #todo:0 Do I need more instructions here for starting the web server? -->

### Full Version

Example of static image server:
https://github.com/zimeon/iiif/tree/master/demo-static

In a terminal type in the following:

```
git clone git@github.com:zimeon/iiif.git iiif-python
cd iiif-python/demo-static
```

If you have Python 2:
`python -m SimpleHTTPServer`

Python 3:
`python -m http.server`

Visit: http://localhost:8000

Open one of the sample images and pan and zoom around. Watch in the console as the different tiles that are delivered.

Now in the terminal type: `tree starfish`. You should see output of the directory structure and files that make up all of the tiles. Partial output looks like this:

```
starfish
├── 0,0,1024,1024
│   └── 1024,
│       └── 0
│           └── default.jpg
├── 0,0,2048,2048
│   └── 1024,
│       └── 0
│           └── default.jpg
├── 0,1024,1024,1024
│   └── 1024,
│       └── 0
│           └── default.jpg
├── 0,2048,1024,1024
│   └── 1024,
│       └── 0
│           └── default.jpg
├── 0,2048,2048,1952
│   └── 1024,
│       └── 0
│           └── default.jpg
...
```
