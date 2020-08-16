# USER5's dotfiles
*Now inside a symlink-able folder, for use with [GNU Stow](https://www.gnu.org/software/stow/)*

**Before using these files, make sure you take a look at what they do**

## Installation
Download the folder so that this README.md document is in ```~/dotfiles/README.md``` and run the command:
```bash
ls -d ~/dotfiles/*/ | xargs stow
```

## Things to watch out for & check
- ```vim/.vim/vimrc``` contains lines which disable key repeat when vim is open. This uses xorg, and will cause issues if you don't use xorg
- ```i3/.config/Monitors.xml``` is almost certainly not going to work for you, since this is specific to your monitor setup. Unfortunately, this file took a long time for me to figure out, so I have it included as a backup
- ```zsh/.zshrc``` contains references to wal for setting terminal colours, as well as an alias for ls to ```ls --color=auto```
