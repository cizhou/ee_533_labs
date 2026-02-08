#!/bin/bash

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 nf<host_number> <file1> [file2 ...]"
  echo "Example: $0 nf3 results.csv"
  exit 1
fi

HOST_RAW=$1
shift

USER="node4"
HOST="$HOST_RAW.usc.edu"
SRC_DIR="/home/$USER"

for FILE in "$@"; do
  echo "Pulling $FILE from $USER@$HOST"
  scp "$USER@$HOST:$SRC_DIR/$FILE" .
done
