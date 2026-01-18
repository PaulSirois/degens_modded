#!/bin/bash

for file in /home/minecraft/.pw/degens_modded/*.pw.toml; do
	base=$(basename "$file")
	slug="${base%%.*}"
	packwiz rm $slug
	packwiz mr add $slug
done
