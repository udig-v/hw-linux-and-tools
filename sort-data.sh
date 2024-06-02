#! /usr/bin/bash

input_file=$1

sorted_file="${input_file%.*}_sorted.${input_file##*.}"

sort -n -k1,1 "$input_file" > "$sorted_file"
