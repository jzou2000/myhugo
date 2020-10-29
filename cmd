#! /bin/sh
if [[ "$1" == "shell" ]]; then
  shift
  /bin/sh $*
else
  hugo $*
fi
