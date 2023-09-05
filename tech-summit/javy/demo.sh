#!/bin/bash

# Set the default commands file
commands_file="commands.txt"

# Check if a CLI arg is provided
if [ "$1" ]; then
  commands_file=$1
fi

# Read commands from commands.txt into an array
mapfile -t commands < "$commands_file"

# Loop through commands
for cmd in "${commands[@]}"; do
  [[ -n "$cmd" ]] && echo "\$ $cmd" || echo "$cmd"
  read -n1 -s -r -p ""
  eval $cmd
done
