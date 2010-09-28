#!/bin/bash
CMDICONS="-a icons -a iconsdir=/usr/share/asciidoc/images/icons/"
DOCCMD="asciidoc -n -a toc -a toclevels=4 -a badges"
LINTCMD="xmllint "
for i in git-tips.txt git-tips/*.txt ; do
  base=${i%.txt}
  $DOCCMD $i;
  $LINTCMD ${base}.html --output ${base}.html;
done
