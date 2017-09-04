# Site Integration

There are lots of different examples of ways that IIIF can be incorporated into your web site. For inspiration take a look at some of these examples.

## Questions

The following questions might help you think about what will work for your institution:

- How do you get from search results to a resource view?
- Is pan/zoom available in every case?
- How would a user get to an alternative viewer?

<!-- #todo:170 What are other questions to ask yourself about site integration? -->

## Examples

- [Yale Center for British Art][yale] links to zoom viewer and Mirador. Multiple images of the same painting.
- [Harvard Art Museums][harvard]
- [Digital Bodleian][bod] provides links to viewers and a direct link to the manifest.
- [Wellcome Library][wellcome]

<!-- #todo:30 Add V&A examples to site integration -->

### NCSU Libraries Example

All of the images on the [NCSU Libraries' Rare and Unique Digital Collections][ncsu-dlib] site are delivered via IIIF. Search results pages show a square region of the image and Universal Viewer and Leaflet are used on the detail view for each resource. Once this foundational infrastructure was in place it supported new creative uses. For instance IIIF images have been included in various archival collection guides to summarize the contents of the digitized folders:

- [Robert W. Graeber Papers, circa 1911-1949][nsu-graeber]
- [George Matsumoto Papers, 1945-1991][ncsu-matsumoto]
- [Charles W. Suggs Papers, 1914-1995][ncsu-suggs]

NCSU Libraries uses its IIIF image service too feed in images to create OCR and deliver content search responses using [Ocracoke][ocracoke]. NCSU Libraries is also adding support for IIIF images into the archival request and workflow management system called [Circa][circa].


[yale]: http://collections.britishart.yale.edu/vufind/Record/1667702
[harvard]: http://www.harvardartmuseums.org/collections?worktype%5B%5D=painting
[bod]: http://digital.bodleian.ox.ac.uk/inquire/Discover/Search/#/?p=c+0,t+,rsrs+0,rsps+10,fa+,so+ox%3Asort%5Easc,scids+,pid+eba7435d-673e-449b-8a8f-bd644ee88ea4,vi+ae64724a-feae-4944-9a3e-424658c2c894
[wellcome]: https://wellcomelibrary.org/item/b21051951

[ncsu-dlib]: https://d.lib.ncsu.edu/collections
[ncsu-graeber]: https://lib.ncsu.edu/findingaids/mc00020/contents
[ncsu-matsumoto]: https://lib.ncsu.edu/findingaids/mc00042/contents
[ncsu-suggs]: https://lib.ncsu.edu/findingaids/mc00033/contents
[ocracoke]: https://github.com/NCSU-Libraries/ocracoke
[circa]: https://github.com/NCSU-Libraries/circa
