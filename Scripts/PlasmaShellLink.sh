#!/usr/bin/env bash


SOURCE_DIR="$HOME/.dotfiles/shell"
TARGET_DIR="$HOME"

if [ ! -d "$SOURCE_DIR" ]; then
  echo "error: $SOURCE_DIR does not exists"
  exit 1
fi

for item in "$SOURCE_DIR"/.*; do
  name="$(basename "$item")"

  if [[ "$name" == "." || "$name" == ".." ]]; then
    continue
  fi

  target="$TARGET_DIR/$name"

  ln -sf "$item" "$target"
  echo "new link: $target -> $item"
done
