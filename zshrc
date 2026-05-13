
# Python venv for python scripts
export PATH="/Users/kristin/Documents/python scripts/venv/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Password generator
genpwd() { genpass "$@" | pbcopy && echo "Password copied to clipboard!"; }
