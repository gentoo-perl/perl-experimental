#!/bin/bash
CMDICONS="-a icons -a iconsdir=/usr/share/asciidoc/images/icons/"
CMD="asciidoc -n -a toc -a toclevels=4 -a badges"
for i in git-tips.txt git-tips/*.txt ; do
  $CMD $i;
done
