#!/bin/bash
DOCCMD="asciidoc -f config "
LINTCMD="xmllint --xmlout"
for i in git-tips.txt git-tips/*.txt ; do
  base=${i%.txt}
  $DOCCMD $i;
  $LINTCMD ${base}.html --output ${base}.html;
done
