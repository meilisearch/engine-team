#!/bin/bash

# Usage: ./bash ndjson-to-json.bash file.ndjson file.json

file="$1"
new_file="$2"

echo '[' > "$new_file"
sed '$!s/$/,/' "$file" >> "$new_file"
echo ']' >> "$new_file"
