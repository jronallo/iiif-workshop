# Why IIIF?

- Having users download the entire large file is inefficient and will likely provide a poor user experience.

```html
<img src="babel.jpg">
```

or

```html
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Pieter_Bruegel_the_Elder_-_The_Tower_of_Babel_%28Rotterdam%29_-_Google_Art_Project.jpg/598px-Pieter_Bruegel_the_Elder_-_The_Tower_of_Babel_%28Rotterdam%29_-_Google_Art_Project.jpg">
```

<a href="https://commons.wikimedia.org/wiki/File:Pieter_Bruegel_the_Elder_-_The_Tower_of_Babel_(Rotterdam)_-_Google_Art_Project.jpg">![](/assets/images/babel.jpg)</a>

!INCLUDE "../includes/leaflet.html"

<script>
L.tileLayer.iiif('https://iiif.lib.ncsu.edu/iiif/mc00042-005-ff0033-000-001_0001/info.json').addTo(map);
</script>
