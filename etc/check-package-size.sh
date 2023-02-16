#!/bin/bash

set -eu -o pipefail

function enter () {
  local dir="${1:?need directory to enter}"
  echo -n $'  in' $dir $'\t→\t'
  cd $dir
}

function indent () {
  "$@" | grep "package size" | while read -r line; do
    echo "    " $line
  done
}

echo "in root: gitoxide CLI"
(enter cargo-smart-release && indent cargo diet -n --package-size-limit 100KB)
(enter gix-actor && indent cargo diet -n --package-size-limit 5KB)
(enter gix-pathspec && indent cargo diet -n --package-size-limit 25KB)
(enter git-refspec && indent cargo diet -n --package-size-limit 25KB)
(enter gix-path && indent cargo diet -n --package-size-limit 20KB)
(enter gix-attributes && indent cargo diet -n --package-size-limit 20KB)
(enter git-discover && indent cargo diet -n --package-size-limit 25KB)
(enter git-index && indent cargo diet -n --package-size-limit 55KB)
(enter git-worktree && indent cargo diet -n --package-size-limit 35KB)
(enter gix-quote && indent cargo diet -n --package-size-limit 10KB)
(enter git-revision && indent cargo diet -n --package-size-limit 35KB)
(enter git-bitmap && indent cargo diet -n --package-size-limit 10KB)
(enter gix-tempfile && indent cargo diet -n --package-size-limit 30KB)
(enter gix-lock && indent cargo diet -n --package-size-limit 20KB)
(enter gix-config && indent cargo diet -n --package-size-limit 120KB)
(enter gix-config-value && indent cargo diet -n --package-size-limit 20KB)
(enter git-command && indent cargo diet -n --package-size-limit 10KB)
(enter gix-hash && indent cargo diet -n --package-size-limit 30KB)
(enter git-chunk && indent cargo diet -n --package-size-limit 10KB)
(enter git-rebase && indent cargo diet -n --package-size-limit 5KB)
(enter git-sequencer && indent cargo diet -n --package-size-limit 5KB)
(enter gix-features && indent cargo diet -n --package-size-limit 55KB)
(enter gix-ref && indent cargo diet -n --package-size-limit 55KB)
(enter git-diff && indent cargo diet -n --package-size-limit 10KB)
(enter git-traverse && indent cargo diet -n --package-size-limit 10KB)
(enter gix-url && indent cargo diet -n --package-size-limit 25KB)
(enter gix-validate && indent cargo diet -n --package-size-limit 5KB)
(enter gix-date && indent cargo diet -n --package-size-limit 15KB)
(enter git-hashtable && indent cargo diet -n --package-size-limit 5KB)
(enter git-filter && indent cargo diet -n --package-size-limit 5KB)
(enter git-lfs && indent cargo diet -n --package-size-limit 5KB)
(enter git-note && indent cargo diet -n --package-size-limit 5KB)
(enter git-fetchhead && indent cargo diet -n --package-size-limit 5KB)
(enter gix-sec && indent cargo diet -n --package-size-limit 15KB)
(enter git-tix && indent cargo diet -n --package-size-limit 5KB)
(enter git-credentials && indent cargo diet -n --package-size-limit 30KB)
(enter git-prompt && indent cargo diet -n --package-size-limit 15KB)
(enter gix-object && indent cargo diet -n --package-size-limit 25KB)
(enter git-commitgraph && indent cargo diet -n --package-size-limit 30KB)
(enter git-pack && indent cargo diet -n --package-size-limit 125KB)
(enter git-odb && indent cargo diet -n --package-size-limit 130KB)
(enter git-protocol && indent cargo diet -n --package-size-limit 80KB)
(enter git-packetline && indent cargo diet -n --package-size-limit 35KB)
(enter gix && indent cargo diet -n --package-size-limit 280KB)
(enter git-transport && indent cargo diet -n --package-size-limit 85KB)
(enter gitoxide-core && indent cargo diet -n --package-size-limit 100KB)
