#!/usr/bin/env sh

cd /home/jason/code/iiif-workshop/workshop
gitbook build
rsync -avzc /home/jason/code/iiif-workshop/workshop/_book/* ronallo:/var/www/iiif-workshop/.
