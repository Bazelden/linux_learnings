#!/bin/bash


read -p "Enter the directory path you would like information on: " directory

if [ ! -d "$directory" ]; then
	echo "Error: Directory '$directory' not found."
fi

file_count=$(find "$directory" -maxdepth 1 -type f | wc -1)

last_edit=$(stat -c "%y" "$directory")

largest_file=$(find "$directory" -type f -printf "%s %p\n" | sort -nr | head -n 1)

smallest_file=$(find "$directory" -type f -printf "%s %p\n" | sort -n | head -n 1)

largest_file_size=$(echo "$largest_file" | cut -d ' ' -f 1)
largest_file_name=$(echo "$largest_file" | cut -d ' ' -f 2-)
smallest_file_size=$(echo "$smallest_file" | cut -d ' ' -f 1)
smallest_file_name=$(echo "$smallest_file" | cut -d ' ' -f 2-)

echo "Directory: $directory"
echo "Number of files: $file_count"
echo "Last edited: $last_edit"
echo "Largest file: $largest_file_name Size: $largest_file_size bytes"
echo "Smallest file: $smallest_file_name Size: $smallest_file_size bytes"


