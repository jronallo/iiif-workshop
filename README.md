# IIIF Workshop

## NEW VERSION

See the new beta version here: https://github.com/jronallo/iiif-workshop-new

## Introduction

Materials for a workshop covering:
- Image API
- Presentation API
- Content Search API
- Authentication API (overview)
- Community
- and more!

The latest version is currently [published here](http://ronallo.com/iiif-workshop).

The workshop is designed to be led by an instructor who can answer questions and help with exercises, but it ought to be useful for self-guided learning as well.

## Directories

- `workshop`: contains the main workshop materials to build a gitbook
- `vm`: contains a Vagrant file and Ansible provisioning scripts for building a virtual machine with everything needed for the workshop. This is a work in progress.

## Development

Requires NodeJS.

- Clone the repository
- `cd iiif-workshop/workshop`
- `npm i gitbook-cli -g`
- `gitbook install`
- `gitbook serve`

Now visit <http://localhost:4000/> to see live changes to the book.

To build the site without running a web server run: `gitbook build`

See more on installation, setup, and building here: <https://toolchain.gitbook.com/setup.html>

## Deployment

Run: `./deploy.sh`
