# Validation

IIIF runs an [image server validator][validator]. In order for the validator to work it requires that the image server deliver a carefully crafted image. Before you make your images available to the public you should validate your image server.

[click here to validate a server][validate-ncsu]

<!-- #todo:0 why is this broken [click here to validate a server][validate-nlw] -->

> Note that at the time of this writing there seem to be errors in the "Check Image Information" and "quality_bitonal" tests in some cases.

<!-- TODO: use the IIIF image server reference implementation once that's back up and running -->

[validator]: http://iiif.io/api/image/validator/

[validate-ncsu]: http://iiif.io/api/image/validator/results/?server=api.bl.uk&prefix=image%2Fiiif&identifier=ark%3A%2F81055%2Fvdc_100038478811.0x000001&version=2.0&level=1&id_squares=on&info_json=on&id_basic=on&id_error_escapedslash=on&id_error_unescaped=on&id_escaped=on&id_error_random=on&region_error_random=on&region_pixels=on&size_region=on&size_error_random=on&size_ch=on&size_wc=on&size_percent=on&rot_error_random=on&quality_error_random=on&format_jpg=on&format_error_random=on&jsonld=on&baseurl_redirect=on&cors=on

[validate-nlw]: http://iiif.io/api/image/validator/results/?server=dams.llgc.org.uk&prefix=%2Fiiif%2Fimage&identifier=validate&version=2.0&level=1&id_squares=on&info_json=on&id_basic=on&id_error_escapedslash=on&id_error_unescaped=on&id_escaped=on&id_error_random=on&region_error_random=on&region_pixels=on&size_region=on&size_error_random=on&size_ch=on&size_wc=on&size_percent=on&rot_error_random=on&quality_error_random=on&format_jpg=on&format_error_random=on&jsonld=on&baseurl_redirect=on&cors=on
