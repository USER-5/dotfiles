#!/usr/bin/env bash

rm -rf ~/.config/home-manager
home-manager --extra-experimental-features "nix-command flakes" init
sed -ie 's/modules = \[ \(.*\) \];/modules = \[ \1 .\/common.nix \];/' ~/.config/home-manager/flake.nix
cp "$(dirname $0)/common.nix" ~/.config/home-manager/common.nix
