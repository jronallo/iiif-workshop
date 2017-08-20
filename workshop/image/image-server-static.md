# Static Image Server

Example of static image server:
https://github.com/zimeon/iiif/tree/master/demo-static

### Run Example Static Server

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
