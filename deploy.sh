#!/usr/bin/env sh

cd ~/code/iiif-workshop/workshop
echo "Building gitbook..."
gitbook build

cd ~/code/iiif-workshop/workshop/_book
echo "Creating zip file..."
zip -r workshop.zip *

echo "rsync..."
rsync -avzc /home/jason/code/iiif-workshop/workshop/_book/* ronallo:/var/www/iiif-workshop/.
