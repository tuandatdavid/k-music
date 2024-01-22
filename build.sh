#!/bin/sh

rm -R ./.v2
mkdir ./.v2 && cp -R * ./.v2
cd ./.v2
rm "./manifest.webmanifest"
rm "./build.sh"
rm -R "./screenshot"
zip -r "./application.zip" *
cd ../

cd ./.v2 && cp ./application.zip ../
cd ../
rm -R ./.v2
rm -R ./.v3
