# Drag & Drop

While this isn't a formal IIIF specification yet both Universal Viewer and Mirador support dragging a specially constructed link, dropping the link onto a viewer, and having that new resource displayed.

This is similar to the way in which you can drag a file from one folder to another folder in a file browser. The same browser drag and drop functionality is enabled in Gmail where you can drag a file over and drop it into an email as an attachment. This works the same way.

## Exercise

We'll show dragging and dropping into both Mirador and Universal Viewer.

For both of these exercises we'll use a link like this:

https://d.lib.ncsu.edu/collections/catalog/nubian-message-2003-04-01?manifest=https%3A%2F%2Fd.lib.ncsu.edu%2Fcollections%2Fcatalog%2Fnubian-message-2003-04-01%2Fmanifest

If you just click that link you'll be taken to the resource. The important part though in this case is the `manifest` query parameter. The value of the `manifest` query parameter is a manifest URL that is URL encoded. (So the manifest URL but with some characters swapped out so that it forms a valid query parameter in a URL.)

 Really any base URL will work as long as the `manifest` query parameter is present and correct. So the following dummy URL with the same `manifest` query parameter works just as well:

http://example.org?manifest=https%3A%2F%2Fd.lib.ncsu.edu%2Fcollections%2Fcatalog%2Fnubian-message-2003-04-01%2Fmanifest

And all of this can wrap an image like the IIIF logo too:

[![](../assets/images/logo.jpg)](https://d.lib.ncsu.edu/collections/catalog/nubian-message-2003-04-01?manifest=https%3A%2F%2Fd.lib.ncsu.edu%2Fcollections%2Fcatalog%2Fnubian-message-2003-04-01%2Fmanifest)

### Universal Viewer

In a separate window open up [Universal Viewer](universal-viewer.md).

Place the window with Universal Viewer off to one side and the window with this page off to the other side.

Click and hold on one of the above links (or the IIIF logo).

Drag the link (or logo) over to the window with Universal Viewer and over the middle of the viewer.

Now let go to drop the link over the viewer.

The resource at the URL in the `manifest` parameter should now show up in Universal Viewer.

### Mirador

In a separate window open up [Mirador](mirador.md).

Place the window with Mirador off to one side and the window with this page off to the other side.

Click and hold on one of the above links (or the IIIF logo).

Drag the link (or logo) over to the window with Mirador and over the middle of the viewer.

Now let go to drop the link over the viewer.

The resource at the URL in the `manifest` parameter should now show up in Mirador.

## More Information

You can read more about how this works here:
https://zimeon.github.io/iiif-dragndrop/
