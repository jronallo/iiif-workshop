# Static Image Server

Pros:
- Simple to deploy with a standard web server--no need for a specialized image server
- Possible to use existing full images and tiles with redirects

Cons:
- Lot of storage space
- Limits which sizes can be requested

The approach here is to pregenerate different image sizes and tiles and create an info.json

This static implementation is often called a "Level 0" Image API implementation.

You can search the [IIIF Awesome list](https://github.com/IIIF/awesome-iiif) for code to create static images and tiles. If you look at the full example below you'll see one such implementation.

## Run Example Static Server

### Simple Example

1. Download <a href="../assets/starfish.zip" target="_blank">this zip file</a>.

2. Unzip the file into your ["iiif-workshop" directory](../preparation/directory.md).

3. Explore the files in the "starfish" directory.

  You can use a file browser or the command line. If you use the command line you can try to run `tree starfish`.

  > What are you finding in the directory?

4. Start a [simple web server](../preparation/web-server.md) (if it isn't still running) pointing at your "iiif-workshop" directory.

5. Visit: http://localhost:3000/starfish/full/750,/0/default.jpg

6. Now reload this workshop page and it should work in these viewers.

  > Note: The info.json for this static example expects the server to be http://localhost:3000. If your web server is listening on a different port, you'll need to change that.

## OpenSeadragon

<!-- #todo:620 move OSD to separate include files -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/openseadragon/2.3.0/openseadragon.min.js"></script>
<div id="osd" style="width:100%;height:400px;"></div>
<script>
OpenSeadragon({
        id: "osd",
        prefixUrl: "https://cdnjs.cloudflare.com/ajax/libs/openseadragon/2.3.0/images/",
        tileSources: "http://localhost:3000/starfish/info.json"
    });
</script>

## Leaflet

**Try zooming in for it to work in Leaflet**:
{% include "../includes/image/leaflet.html" %}
{% include "../includes/image/leaflet-starfish.html" %}

### Run the Full Version of the Static Demo

> Skip this section and go to the next if you have the above version working.

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

## Exploring the Static Implementation

> How does the client know what images to request?

If you're on Linux or a Mac open up the starfish directory in a terminal and type type: `tree starfish`. You should see output of the directory structure and files that make up all of the tiles. Partial output looks like this:

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
