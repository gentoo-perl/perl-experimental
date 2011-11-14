 git status  --porcelain  | sed -r 's/^[MRD? ]+ ([^/]+\/[^/]+)\/.*/\1/' | sort -u  | grep -v scripts
