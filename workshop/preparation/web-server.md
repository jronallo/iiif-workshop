# Setting Up a Simple Local Web Server

In order to serve up local files during the workshop you'll need to be running a simple web server. Even if you've never run a web server on your own machine before this still ought to be easy.

CORS

## Chrome Extension

The easiest way to

https://chrome.google.com/webstore/detail/web-server-for-chrome/ofhbbkphhbklhfoeikjpcbhemlocgigb?hl=en

![](/assets/images/web-server-for-chrome.png)

## Scripting Languages

You'll need to know how to open up a terminal if you want to try using a scripting language to

### Ruby

Here's a Ruby one-liner for starting a server from the current directory:

```ruby
ruby -rwebrick -e 'WEBrick::HTTPServer.new(Port: 3000, DocumentRoot: Dir.pwd, RequestCallback: Proc.new{|req,res| res["Access-Control-Allow-Origin"] = "*" }).start'
```

### Node



### Python

Python does not have a simple one-liner

```python
!INCLUDE "../scripts/cors_http_server.py"
```
