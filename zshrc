
# Environment
# Python venv for python scripts
export PATH="/Users/kristin/Documents/python scripts/venv/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Password generator
genpwd() { genpass "$@" | pbcopy && echo "Password copied to clipboard!"; }

# Sync .zshrc to dotfiles repo
syncdots() {
  cp ~/.zshrc ~/dotfiles/zshrc
  git -C ~/dotfiles add zshrc
  git -C ~/dotfiles commit -m "Update zshrc"
  git -C ~/dotfiles push
  echo "Dotfiles synced to GitHub!"
}
