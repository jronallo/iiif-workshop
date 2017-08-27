# HTTPS

IIIF makes no hard and fast requirement to serve up resources under HTTPS. Implementers of IIIF are encouraged to serve resources via HTTPS for a couple reasons.

## Privacy

While HTTPS is often thought of as a security measure for things like banking and submitting credit card information. Using HTTPS also provides privacy. The details of the specific resource that is being requested are encrypted including the path part of the URL. This adds some privacy for your users that would otherwise be exposed.

## Mixed Content Restrictions

More specific to IIIF, delivering your content over HTTPS means that it can be included in other web pages without issue. If you serve your content over HTTP and another page tries to embed it within an HTTPS page, the browser will display a warning or refuse to load the content. When an HTTPS page tries to load HTTP content it is called mixed content. If you want to have the greatest amount of interoperability for your content, you should consider delivering it over HTTPS.

## Resources

Here's more information on the different types of mixed content and how browsers will respond:
https://developer.mozilla.org/en-US/docs/Web/Security/Mixed_content

Here's a blog post on the case for serving IIIF content over HTTPS:
https://www.jack-reed.com/2017/05/23/the-case-for-serving-your-iiif-content-over-https.html
