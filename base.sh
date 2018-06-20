#!/bin/sh

# Create soft links

files=("zshenv" "zshrc" "vimrc" "gitconfig" "gitignore"
)

for file in ${files[@]}; do
  if  [[ -f "$HOME/.$file" ]]; then
    echo "Deleting $HOME/.$file..." && rm "$HOME/.$file"
  fi
  echo "Creating symbolink link $HOME/.$file..."
  ln -s "$PWD/$file" "$HOME/.$file"
done

