# Content Search Query Interface

We've previously seen what needs to be added to a manifest to enable search inside. On this page we'll cover how the client forms a query using the information from the manifest.

## Query Parameters

http://iiif.io/api/search/1.0/#query-parameters

| Parameter    | Definition                                                       |
|:-------------|:-----------------------------------------------------------------|
| `q`          | A space separated list of search terms.                          |
| `motivation` | A space separated list of motivation terms.                      |
| `date`       | A space separated list of date ranges.                           |
| `user`       | A space separated list of URIs that are the identities of users. |

### `q`

The `q` parameter allows for searching within the next of an annotation.

### `motiviation`

It is possible to narrow results by the motivation of the annotation.

| Motivation     | Definition                                               |
|:---------------|:---------------------------------------------------------|
| `painting`     | Only annotations with the `sc:painting` motivation       |
| `non-painting` | Annotations with any motivation other than `sc:painting` |
| `commenting`   | Annotations with the `oa:commenting` motivation          |
| `describing`   | Annotations with the `oa:describing` motivation          |
| `tagging`      | Annotations with the `oa:tagging` motivation             |
| `linking`      | Annotations with the `oa:linking` motivation             |

## Example

So an example of a search query would be like the following. It is as simple as adding a `q` parameter to the URI for the search service.

https://ocr.lib.ncsu.edu/search/segPap_003?q=amazon

> Note that this particular implementation [ignores](http://iiif.io/api/search/1.0/#ignored-parameters) all parameters other than `q`.

### Query Response

To understand a search query response, you need to look at the relationship between `resources` and `hits`.

The `hits` are the search results. There are a number of features that are possible with `hits` but the main property to focus on are the `annotations`. The list of `annotations` are identifiers that refer to the `@id` of one of the listed `resources`.

A resource is an embedded annotation. (This is a performance optimization instead of having to make additional requests for many annotations.) The value of the `on` property for the annotation is a canvas. This can either be the full canvas or a region of the canvas using a spatial media fragment (`xywh`). The use of the `xywh` fragment then allows for a client to highlight just the text that matches the query.

To allow for painting an annotation onto a particular region of the canvas to highlight the search match, a search server would need to know the bounding box for the match. In some cases this might be the individual word or the line or paragraph the word is in.

## Autocomplete

http://iiif.io/api/search/1.0/#autocomplete

The autocomplete service works similarly. Here's an example URI for autocomplete:

https://ocr.lib.ncsu.edu/search/segPap_003?q=ama

The `terms` list returns the matches that can be provided as search suggestions.

<!-- #backlog:190 improve content search query interface page -->
