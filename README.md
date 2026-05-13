# dotfiles

Laptop bootstrap for PFG Dev Tools. Git, zsh, vim, and a Brewfile of the
CLI tools we actually use (`git`, `jq`, `ripgrep`, `gh`).

These are **personal machine** files. They do not configure CI runners
(see [`actions`](https://github.com/pfg-devtools/actions)) and they do not
provision GitHub (see [`tf-github`](https://github.com/pfg-devtools/tf-github)).

## Layout

```
bin/install.sh     symlinks gitconfig, zshrc, vimrc into $HOME
Brewfile           Homebrew packages
gitconfig          user.git / aliases
git/ignore         extra ignores (.DS_Store, .env, swap)
zshrc
zsh/aliases.zsh    gs, k, …
vimrc
Makefile           make install -> bin/install.sh
docs/macos.md
```

## Install (macOS)

```bash
git clone https://github.com/pfg-devtools/dotfiles.git ~/src/dotfiles
cd ~/src/dotfiles
brew bundle --file Brewfile
make install
```

`install.sh` is idempotent: it `ln -sfn`s into `$HOME`. It will replace
existing `~/.gitconfig`, `~/.zshrc`, and `~/.vimrc` with symlinks.

## What you get

- Git: ignore `.env` and editor junk, sensible defaults
- zsh: `gs` → `git status`, `k` → `kubectl`
- vim: small baseline, not an IDE

Fork or overlay if you need machine-specific aliases. Do not PR secrets
or corporate hostnames into this repo.

## CI

`shellcheck` runs against `bin/install.sh` on push and pull request.

macOS notes: [docs/macos.md](docs/macos.md).
