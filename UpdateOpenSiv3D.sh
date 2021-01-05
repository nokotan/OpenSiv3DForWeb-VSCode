#!/bin/bash

curl -L -o OpenSiv3D.tgz https://github.com/nokotan/OpenSiv3D/releases/download/v0.4.3.3-web/OpenSiv3D-wasm.tgz

# Extract & Overwrite
tar -xvf OpenSiv3D.tgz
cp -r Package/* OpenSiv3D

# Clean up
rm -r Package
rm OpenSiv3D.tgz
