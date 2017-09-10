# Images in HTML

To understand how IIIF works, we'll first want to understand how images work in HTML.

Here's a simple example of how an image can be included on a web page.

```html
<img src="babel.jpg">
```

Or here's a full URL the the image.

```html
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Pieter_Bruegel_the_Elder_-_The_Tower_of_Babel_%28Rotterdam%29_-_Google_Art_Project.jpg/598px-Pieter_Bruegel_the_Elder_-_The_Tower_of_Babel_%28Rotterdam%29_-_Google_Art_Project.jpg">
```

<a href="https://commons.wikimedia.org/wiki/File:Pieter_Bruegel_the_Elder_-_The_Tower_of_Babel_(Rotterdam)_-_Google_Art_Project.jpg">![](/assets/images/babel.jpg)</a>

## IIIF in HTML

Using a IIIF image in HTML is just as simple as adding it as the `src` of an `img` tag just like any other image:

```html
<img src="https://iiif.lib.ncsu.edu/iiif/ua021_428-001-cb0008-000-250_0001/full/400,/0/default.jpg">
```

[![](https://iiif.lib.ncsu.edu/iiif/ua021_428-001-cb0008-000-250_0001/full/600,/0/default.jpg)](https://d.lib.ncsu.edu/collections/catalog/ua021_428-001-cb0008-000-250)

## CSS Stylesheets

It is also possible to use IIIF images in CSS for background images.

```html
<div id="css-demo"></div>
```

```css
#css-demo {
  width: 800px;
  max-width: 100%;
  height: 300px;
  background-image: url("https://iiif.lib.ncsu.edu/iiif/ua021_428-001-cb0008-000-250_0001/full/800,/0/default.jpg");
  font-size: 3em;
  font-weight: bold;
  padding: 60px;
  color: #01AAFD;
}
```

<div id="css-demo">Text Over Background Image</div>
