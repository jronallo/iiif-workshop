#!/usr/bin/env sh

cd ~/code/iiif-workshop/workshop
gitbook build

cd ~/code/iiif-workshop/workshop/_book
zip -r workshop.zip *

rsync -avzc /home/jason/code/iiif-workshop/workshop/_book/* ronallo:/var/www/iiif-workshop/.
