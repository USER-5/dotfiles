#!/usr/bin/env bash

cp "$(dirname $0)/common.nix" ~/.config/home-manager/common.nix
cp "$(dirname $0)/gui.nix" ~/.config/home-manager/gui.nix
cp "$(dirname $0)/git.nix" ~/.config/home-manager/git.nix

echo "New file copied to ~/.config/home-manager/common.nix"
if [ -f ~/.config/home-manager/flake.nix ]; then
        echo "If this is your first time installing, add it as a module in flake.nix"
else
        echo "If this is your first time installing, merge it with home.nix"
        echo "imports = [ ./common.nix ];"
fi
