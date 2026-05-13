# Dotfiles

Shell configuration files for macOS.

## Files

| File | Description |
|------|-------------|
| `zshrc` | Zsh shell configuration — PATH, aliases, and shell functions |

## Usage

To apply the configuration on a new machine:

```bash
cp zshrc ~/.zshrc
source ~/.zshrc
```

## Contents

### Shell Functions

- `genpwd [flags] [length]` — Generates a password using `genpass` and copies it to the clipboard

  ```bash
  genpwd              # 32-char password (default)
  genpwd 20           # 20-char password
  genpwd -l -n -s -u  # all character types
  ```

  Requires: `cargo install genpass`
