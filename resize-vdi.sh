#!/bin/bash
if [ $# -ne 2 ]; then
  echo "usage: $0 <vdi-file> <new-size-in-megabytes>"
  exit 1
fi
vboxmanage modifyhd "$1" --resize $2
