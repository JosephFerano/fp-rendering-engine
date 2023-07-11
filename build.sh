#!/bin/sh

elm make Scene.elm
sed -i 's/<title>Scene<\/title>/<title>3DFP<\/title>/g' index.html
mkdir -p ./public
mv index.html ./public/
cp -r ./models ./public
cp -r ./textures/ ./public
cd public
zip -r ../3dfp.zip .
