# Preparation

In order for the workshop to go smoothly


## Requirements

- modern browser
- text editor, preferably one that does syntax highlighting (e.g. [Atom](https://atom.io/))
- a simple [local web server](web-server.md)

That's it. With just those and a network connection you ought to be able to follow along with the major portions of the workshop.

## Bonus Setup

There are some optional, more technical exercises that you can do if you have some extra things installed.

You should have `git` installed.

For additional setup you have two options:

1. Use a virtual machine (Vagrant and Virtualbox). Easier.
2. Install all dependencies locally. More complicated.

> Either method will require large downloads and time, so best to do this before the workshop.

### Option 1: Virtual Machine

NOT YET FULLY IMPLEMENTED. The virtual machine will eventually have everything that's needed.

Requirements for running the virtual machine are [Vagrant](https://www.vagrantup.com/) and [Virtualbox](https://www.virtualbox.org/). You ought to be able to use a package manager to install these or go to the sites for directions on how to install.

Clone the workshop: YKK

In a terminal change into the `vm` directory: `cd iiif-workshop/vm`

Start the virtual machine and provision it: `vagrant up`. This takes a long time.

If you got errors try running `vagrant provision`.

<!-- #todo:100 Publish an already fully provisioned VM that just needs to be downloaded and run. -->

### Option 2: Local Install

You can take a look in the `vm/ansible` directory of this repository for everything that's needed, but the following is a summary of what's needed.

To explore a static image server:
- Python (2 or 3)
- Clone the _large_ repo here in advance: https://github.com/zimeon/iiif

To explore a dynamic image server:
- Install Java 8 (Oracle JRE or OpenJDK)
- Download: https://github.com/medusa-project/cantaloupe/releases/download/v3.3.2/Cantaloupe-3.3.2.zip
