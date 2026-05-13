
# Environment
# Python venv for python scripts
export PATH="/Users/kristin/Documents/python scripts/venv/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Password generator
genpwd() { genpass "$@" | pbcopy && echo "Password copied to clipboard!"; }

# Pattern password: 1 uppercase + 3 lowercase + 4 digits + 'a' (9 chars)
genpwd-pattern() {
  python3 -c "
import random, string
pw = (random.choice(string.ascii_uppercase) +
      ''.join(random.choices(string.ascii_lowercase, k=3)) +
      ''.join(random.choices(string.digits, k=4)) +
      'a')
print(pw)
" | tr -d '\n' | pbcopy && echo "Password copied to clipboard!"
}

# Secure password: alphanumeric + special, at least one uppercase (default 16 chars)
genpwd-secure() {
  genpass -u -l -n -s "${1:-16}" | pbcopy && echo "Password copied to clipboard!"
}

# Sync .zshrc to dotfiles repo
syncdots() {
  cp ~/.zshrc ~/dotfiles/zshrc
  git -C ~/dotfiles add zshrc
  git -C ~/dotfiles commit -m "Update zshrc"
  git -C ~/dotfiles push
  echo "Dotfiles synced to GitHub!"
}
