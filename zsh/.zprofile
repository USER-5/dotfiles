# Homebrew
if [ -f /opt/homebrew/bin/brew ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Path Config
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
export FPATH="$FPATH:$HOME/.fpath"

# FNM
if command -v fnm &> /dev/null; then
	eval "$(fnm env --use-on-cd)"
fi
