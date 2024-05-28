#!/bin/bash

deleteNonUserFiles(){

output="$HOME/userinfo.txt"

awk -F: '{print $3 "-" $1}' /etc/passwd >> "$output"

find /home -type f ! -user "$USER" ! -user root -exec sh -c 'rm -v "$1" >> "$2"' _ {} "$output" \;

}

deleteNonUserFiles
