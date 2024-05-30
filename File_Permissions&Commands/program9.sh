#!/bin/zsh


for txt_file in *.txt; do
  if [[ -e "$txt_file" ]]; then
    bak_file="${txt_file%.txt}.bak"
    mv -v "$txt_file" "$bak_file"
  else
    echo "No .txt files found in the current directory."
    break
  fi
done

