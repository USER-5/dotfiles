#!/usr/bin/env bash

cp "$(dirname $0)/common.nix" ~/.config/home-manager/common.nix

echo "New file copied to ~/.config/home-manager/common.nix"
if [ -f ~/.config/home-manager/flake.nix ]; then
        echo "If this is your first time installing, add it as a module in flake.nix"
else
        echo "If this is your first time installing, merge it with home.nix"
        echo "let common = import ./common.nix {pkgs=pkgs; config=config; };"
        echo "in"
        echo "lib.recursiveUpdate { # Existing file here"
        echo "}"
        echo "common"
fi
