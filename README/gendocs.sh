#!/bin/bash
DOCCMD="asciidoc -f config "
LINTCMD="xmllint --xmlout"
for i in git-tips.txt git-tips/*.txt ; do
  base=${i%.txt}
  html="${base}.html"
  echo " $base -> $html "
  $DOCCMD $i;
  $LINTCMD ${html} --output ${html}
done
