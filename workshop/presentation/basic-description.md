# Basic Description

http://iiif.io/api/presentation/2.1/#descriptive-properties

There is some basic description you'll definitely want to add before you make a manifest available. We'll start with these properties: [`label`](http://iiif.io/api/presentation/2.1/#label), [`description`](http://iiif.io/api/presentation/2.1/#description), [`attribution`](http://iiif.io/api/presentation/2.1/#attribution), and [`logo`](http://iiif.io/api/presentation/2.1/#logo).

We will include all of these properties at the root level of the JSON.

## Label

The [`label`](http://iiif.io/api/presentation/2.1/#label) is a human readable name or title for the resource.

> Question: Does a manifest require a label?

Add "Papillons", the French word for butterfly, as the `label` for this resource.

## Description

The [`description`](http://iiif.io/api/presentation/2.1/#description) allows for a longer full text description of the resource.

Add this as the value of the `description` property: "Four patterns inspired by butterflies."

> Question: Can you use HTML in a description?

## Attribution

The [`attribution`](http://iiif.io/api/presentation/2.1/#attribution) can be used to present copyright or ownership information or acknowledge the owning and/or publishing institution.

Use "Special Collections Research Center at NCSU Libraries" as the value of `attribution`.

> Question: When a client displays the resource, what is required to be done with the attribution?

## Logo

The [`logo`](http://iiif.io/api/presentation/2.1/#logo) is often used to display the owning or hosting institution for the resource. Clients must display this image.

Find a JPEG to use as your logo. Either find the logo of your institution or some small image that you like. (Use [this hot logo](../assets/images/logo.jpg) if you need to.)

Download the logo into your "iiif-workshop" directory with the name "logo.jpg".

Add the URL http://localhost:3000/logo.jpg as the value of `logo`. Check first that the logo is being served up from that address.

> Question: Besides just displaying the logo, what additional requirements does the specification make?

## JSON

Your JSON ought to look something like this:

```json
{
  "@context": "http://iiif.io/api/presentation/2/context.json",
  "@type": "sc:Manifest",
  "@id": "http://localhost:3000/manifest.json",
  "label": "Papillons",
  "description": "Four patterns inspired by butterflies.",
  "attribution": "Special Collections Research Center at NCSU Libraries",
  "logo": "http://localhost:3000/logo.jpg"
}
```
