#!/bin/bash

if [[ `uname` == 'Darwin' ]]; then
  # MacOS
  font_dir="$HOME/Library/Fonts"
else
  # Linux
  font_dir="$HOME/.fonts"
  mkdir -p $font_dir
fi

# Copy all fonts to user fonts directory
cp ./fonts/* $font_dir -r

# Reset font cache on Linux
if [[ -n `which fc-cache` ]]; then
  fc-cache -vf $font_dir
fi

echo "All fonts installed to $font_dir"
