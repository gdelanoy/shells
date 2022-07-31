#!/bin/bash

mkdir /tmp/truc
cd /tmp/truc

youtube-dl "${@}"
m4a2mp3 "${@}" && rm -fv "*.m4a"
mv -vf "*.mp3" ~/Musique/Divers/
cd -

