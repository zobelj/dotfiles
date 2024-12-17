#!/usr/bin/env bash

# Move any existing .zshrc file to .zshrc.old
if [ -f "$HOME/.zshrc" ] && [ ! -L "$HOME/.zshrc" ]; then
    echo "Moving existing .zshrc to .zshrc.old"
    mv "$HOME/.zshrc" "$HOME/.zshrc.old"
fi

# deploy each stow directory
for dir in */; do
    if [[ "$dir" == ".git/" ]]; then
        continue
    fi

    echo "Stowing $dir..."
    stow -t "$HOME" "$dir"
done

echo "All done!"
