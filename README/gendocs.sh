#!/bin/bash
DOCCMD="asciidoc -f config "
LINTCMD="xmllint --xmlout"
for i in index.txt src/*.txt src/git/*.txt ; do
  base=${i%.txt}
  html="${base}.html"
  echo " $base -> $html "
  $DOCCMD $i;
  $LINTCMD ${html} --output ${html}
done
