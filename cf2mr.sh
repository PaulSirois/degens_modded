#!/bin/bash
pwd

for file in ./resourcepacks/*.pw.toml; do
	base=$(basename "$file")
	slug="${base%%.*}"
	packwiz rm $slug
	packwiz mr add $slug
done

