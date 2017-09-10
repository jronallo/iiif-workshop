# IIIF Workshop

Materials for a workshop covering:
- Image API
- Presentation API
- Content Search API
- Authentication API (overview)
- Community
- and more!

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

To build the site without running a web server run: `gitbook build`

See more on installation, setup, and building here: <https://toolchain.gitbook.com/setup.html>

## Deployment

Run: `./deploy.sh`
