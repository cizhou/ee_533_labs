#!/bin/bash

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 nf<host_number> <file1> [file2 ...]"
  echo "Example: $0 nf3 ids_script.sh"
  exit 1
fi

HOST_RAW=$1
shift
HOST="$HOST_RAW.usc.edu"

# nf4 is the NetFPGA control node
if [ "$HOST_RAW" = "nf4" ]; then
  USER="netfpga"
  DEST="/home/netfpga/"
else
  USER="node4"
  DEST="/home/node4/"
fi

echo "Copying files to $USER@$HOST:$DEST"
scp "$@" "$USER@$HOST:$DEST"
