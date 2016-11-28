#!/bin/bash
# This script upgrades idea and updates icon link

dest=~/lib

echo "Decompressing ..."
tar zxf `/bin/ls -t ~/Downloads/ideaIC* | head -n 1` -C $dest

ver=`/bin/ls -dt $dest/idea-IC-* | head -n 1 | xargs basename | perl -pe 's/idea-IC-(.+)/\1/g'`
echo "IDEA version number: $ver"

echo "Replacing icon config ..."
perl -pe "s/\d+\.\d+\.\d+/$ver/g" -i ~/.local/share/applications/jetbrains-idea-ce.desktop

echo "Removing old version"
rm -rf `/bin/ls -dt $dest/idea-IC-* | tail -n 1`

echo "IDEA upgrade is done"
