# USER5's dotfiles

_Now inside a symlink-able folder, for use with [GNU Stow](https://www.gnu.org/software/stow/)_

**Before using these files, make sure you take a look at what they do**

## Installation

Download the folder so that this README.md document is in `~/dotfiles/README.md` and run the command:

```bash
stow <folder> # Except for nix-home-manager
```

## Nix Home Manager

Unforutunately, nix flakes does not play nicely with symlinks, so we have to copy the common file in

```bash
nix-home-manager/install.sh
```

