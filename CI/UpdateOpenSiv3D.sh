#!/bin/bash

curl -L -o OpenSiv3D.tgz $1

# Extract & Overwrite
tar -xvf OpenSiv3D.tgz
cp -r Package/* OpenSiv3D

# Clean up
rm -r Package
rm OpenSiv3D.tgz

mv OpenSiv3D/resources .
mv OpenSiv3D/example .
