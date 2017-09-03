# Setting Up a Simple Local Web Server

In order to serve up local files during the workshop you'll need to be running a simple web server. Even if you've never run a web server on your own machine before this still ought to be easy.

## Chrome Extension

The easiest way to get a web server running is to use the [Web Server for Chrome extension](https://chrome.google.com/webstore/detail/web-server-for-chrome/ofhbbkphhbklhfoeikjpcbhemlocgigb?hl=en).

Here's how it ought to be set up. Make sure to check the "Set CORS headers" box.

![](/assets/images/web-server-for-chrome.png)

## Scripting Languages

You'll need to know how to open up a terminal if you want to try using a scripting language to run a web server.

### Ruby

Here's a Ruby one-liner for starting a server from the current directory. This uses only the standard library so if you have Ruby installed it ought to work.

```ruby
ruby -rwebrick -e 'WEBrick::HTTPUtils::DefaultMimeTypes["json"]="application/json";WEBrick::HTTPServer.new(Port: 3000, DocumentRoot: Dir.pwd, RequestCallback: Proc.new{|req,res| res["Access-Control-Allow-Origin"] = "*" }).start'
```

### Node

Install http-server:
`npm install http-server -g`

Run the server from the directory with the CORS flag:
`http-server -p 3000 --cors`

### Python

Python does not have a simple one-liner, but this script ought to work:

```python
!INCLUDE "../scripts/cors_http_server.py"
```

### Other Options

Here are some other options which may be able to be changed to allow for CORS headers to be set:
https://gist.github.com/willurd/5720255
