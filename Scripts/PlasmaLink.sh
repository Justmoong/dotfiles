#!/usr/bin/env bash

SOURCE_DIR="$HOME/.dotfiles/.config"
TARGET_DIR="$HOME/.config"

if [ ! -d "$SOURCE_DIR" ]; then
  echo "error: $SOURCE_DIR does not exists"
  exit 1
fi

mkdir -p "$TARGET_DIR"

for item in "$SOURCE_DIR"/*; do
  name="$(basename "$item")"
  target="$TARGET_DIR/$name"

  ln -sf "$item" "$target"
  echo "new link: $target -> $item"
done
