#!/bin/bash

for file in ./src/*.ico; do
  [ -e "$file" ] || continue
  filename=${file##*/}
  extension=${filename##*.}
  title=$(basename -- $file .$extension)
  convert "$file" -thumbnail 100x100 -alpha on -background none -flatten "./dist/$title.png"
done
