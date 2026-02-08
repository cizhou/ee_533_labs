#!/bin/bash

# Usage: ./iperf_client.sh <skip_index> <time_seconds> <bandwidth>

skip_index=$1
time_seconds=$2
bandwidth=$3

data_size=512

servers=(10.0.16.3 10.0.17.3 10.0.18.3 10.0.19.3)
outfile="client${skip_index}_output.txt"

for i in "${!servers[@]}"; do
  if [[ "$i" -eq "$skip_index" ]]; then
    echo "Skipping index $i (${servers[$i]})"
    continue
  fi

  current_server="${servers[$i]}"
  echo "Current Server: $current_server"

  line=$(iperf -c "$current_server" -u -b "$bandwidth" -t "$time_seconds" -l "$data_size" \
         | grep "bits/sec" | tail -n 1)

  if [[ -z "$line" ]]; then
    bw="ERROR"
  else
    bw=$(echo "$line" | awk '{print $(NF-1)" "$(NF)}')
  fi

  echo "$skip_index,$i,$bw" | tee -a "$outfile"
done