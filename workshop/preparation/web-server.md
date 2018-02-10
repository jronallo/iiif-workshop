# Setting Up a Simple Local Web Server

For some exercises to work, the files you will be editing need to be behind a web server.

In order to serve up the local files you're editing during the workshop you'll need to be running a simple web server. Even if you've never run a web server on your own machine before this still ought to be easy.

While you can use standard web servers like Apache or Nginx, you're on your own for setup instructions. The web server will need to listen to localhost on port 3000, have the needed CORS headers set, and serve files from the root directory. The strong recommendation is to use the Web Server for Chrome extension. Other options are provided as potential fallbacks for locked down machines.

## Chrome Extension

The easiest way to get a web server running is to use the [Web Server for Chrome extension](https://chrome.google.com/webstore/detail/web-server-for-chrome/ofhbbkphhbklhfoeikjpcbhemlocgigb?hl=en).

Here's how it ought to be set up. Make sure to check the "Set CORS headers" box.

![](/assets/images/web-server-for-chrome.png)

## Scripting Languages

Scripting languages usually provide a basic web server that can be used for web development. If the Chrome extension doesn't work for you, then you can try the following. You'll need to know how to open up a terminal to use a scripting language to run a web server.

### Ruby

Here's a Ruby one-liner for starting a server from the current directory. This uses only the standard library so if you have Ruby installed it ought to work.

Check if Ruby is installed: `ruby -v`

Run the Webrick server:

```ruby
ruby -rwebrick -e 'WEBrick::HTTPUtils::DefaultMimeTypes["json"]="application/json";WEBrick::HTTPServer.new(Port: 3000, DocumentRoot: Dir.pwd, RequestCallback: Proc.new{|req,res| res["Access-Control-Allow-Origin"] = "*" }).start'
```

### Node

Check if npm is installed: `npm -v`

Install http-server:
`npm install http-server -g`

Run the server from the directory with the CORS flag:
`http-server -p 3000 --cors`

### Python

Check if Python is installed: `python --version`

Python does not have a simple one-liner, but this script ought to work with both Python 2 & 3. Copy it into a file.

```python
!INCLUDE "../scripts/cors_http_server.py"
```

Run: `python cors_http_server.py`

### Other Options

Here are some other options which may be able to be changed to allow for CORS headers to be set:
https://gist.github.com/willurd/5720255

## Fallback: Gist

If all else fails you can create a Github Gist:

1. Navigate to https://gist.github.com
2. Drag and drop your file into the window and click "Create Secret Gist" (or public if you like, it doesn't matter).
3. After the gist is created, click the "Raw" button to get the raw file URL.
4. You can now use that file URL in some of the exercises.

_Note that some exercise pages expect resources to be served from <http://localhost:3000>._
