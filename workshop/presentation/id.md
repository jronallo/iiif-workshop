# Identifier

http://iiif.io/api/presentation/2.1/#id

The suggestion is the make your identifier look something like this:
{scheme}://{host}/{prefix}/{identifier}/manifest

The identifier for the manifest is usually just the URL that you serve your manifest from. For the purposes of the workshop we're serving up our manifest from http://localhost:3000/manifest.json so we'll use that as the identifier.

Edit your "manifest.json" to look like this:

```json
{
  "@context": "http://iiif.io/api/presentation/2/context.json",
  "@type": "sc:Manifest",
  "@id": "http://localhost:3000/manifest.json"
}
```

<!-- #todo:0 What else to say about the @id? -->
