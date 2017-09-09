# Browser

Any recent version of Chrome or Firefox will work. Having both can sometimes be useful. Since an easy way to launch a [simple web server](web-server.md) involves installing a chrome extension, you may choose to use Chrome.

Instructions should work for the following (and may work for versions just below):
- Firefox 55+
- Chrome 60+

## Viewing JSON

As we'll be taking a look at JSON in a browser at times to make sure things are working, you may want to install an extension for your browser that will pretty up your JSON. These extensions will also validate the format of the JSON which can be helpful in finding syntax errors.

> Note that the extensions will not validate whether a IIIF document is valid to the IIIF standards--just that the JSON format is correct.

### Chrome

JSONView
https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc

### Firefox

Recent versions of Firefox include a JSON viewer by default.

JSONView
https://addons.mozilla.org/en-US/firefox/addon/jsonview/

### Developer Tools

With either option you may also need to open the [developer tools](https://developer.mozilla.org/en-US/docs/Tools). On Windows and Linux this is `Ctrl + Shift + I`. On Mac use `Ctrl + Opt + I`.

## Clearing the Browser Cache

Sometimes the browser may cache a resource that you're working on that you've changed. To see the new data you'll need to clear your cache. It is possible in Firefox and Chrome to select an option to disable the cache while the developer tools are open.

Alternatively you may want to try the following browser extensions:

Firefox: https://addons.mozilla.org/en-US/firefox/addon/empty-cache-button/

Chrome: _Can anyone suggest a good cache clearing button for Chrome?_
<!-- #backlog:180 Find a simple Chrome cache clearing extension -->

## Ad Blockers

Sometimes ad blocker extensions (especially algorithmic blockers like Privacy Badger) can give false positives for IIIF resources. The suggestion is to be aware that this is one reason why things may not work. You may also choose to disable ad blockers for the duration of the workshop. You may need to whitelist certain sites if you leave your ad blocker enabled.

## Multiple Windows

Make sure you know how to place two windows next to each other. As  you work through some exercises it will be helpful to have two windows open side by side.
