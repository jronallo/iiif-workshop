# CORS

CORS stands for Cross-Origin Resource Sharing.

In order to share your images across domains you'll need to set CORS headers.

This is a security feature of browsers. Setting the header appropriately will allow for untrusted clients to display your images. If you don't the browser will issue a warning (often via the address bar) or fail to load the image completely. **Is this correct for CORS?**

Here are some tips on how to enable CORS headers for various servers:
https://enable-cors.org/

Here's more in-depth information about how CORS works:
https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS
