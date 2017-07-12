# Dotfiles
This repo holds my zsh and vim configs.

Files with `l` or `m` prefixes are exclusively sourced by my Linux and Mac builds, respectively. `.zsh` denotes a zsh config, and `.vim` denotes a vim config.

## zsh
`.zshenv` sources `e.zsh` and either `le.zsh` or `me.zsh`.
`.zshrc` sources `r.zsh` and either `lr.zsh` or `mr.zsh`.

## vim
`.vimrc` sources one of the `r` files source, each of which in turn source `p`, `k`, and `s` files.
The `p` files hold vim-plug entries.
The `k` files hold keybindings.
The `s` files hold general settings.
