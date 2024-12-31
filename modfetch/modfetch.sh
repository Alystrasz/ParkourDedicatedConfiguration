#!/bin/bash

# download mod archive
curl -s https://api.github.com/repos/Alystrasz/Alystrasz.Parkour/releases/latest \
| grep "zipball_url" \
| cut -d : -f 2,3 \
| tr -d \" \
| tr -d \, \
| wget --output-document=archive.zip -qi -
echo "Fetching archive OK"

# create mod directory
unzip archive.zip
mv Alystrasz-Alystrasz.Parkour* Alystrasz.Parkour
echo "Creating mod directories OK"

# clean up
rm archive.zip
echo "OK"
