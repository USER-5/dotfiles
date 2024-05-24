# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Fish-style completion
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list ''
zstyle :compinstall filename '/home/patrick/.zshrc'
DISABLE_UPDATE_PROMPT=true
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
autoload -Uz compinit
compinit

autoload zmv

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Persistent history file
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Fix home & end keys
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line
bindkey "^[[3~" delete-char

# always ls in colour
alias ls='ls --color=auto'

#disable auto correct
unsetopt correct_all

[ -f "/Users/patrickgregory/.ghcup/env" ] && source "/Users/patrickgregory/.ghcup/env" # ghcup-env
