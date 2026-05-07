#!/bin/sh
VIMHOME=~/.vim
VIMRC_REPO_URL=${VIMRC_REPO_URL:-}

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[ -e "$VIMHOME/vimrc" ] && die "$VIMHOME/vimrc already exists."
[ -e "$HOME/.vim" ] && die "$HOME/.vim already exists."
[ -e "$HOME/.vimrc" ] && die "$HOME/.vimrc already exists."
[ -z "$VIMRC_REPO_URL" ] && die "Set VIMRC_REPO_URL to this repository URL before running auto-install.sh."

git clone "$VIMRC_REPO_URL" "$VIMHOME"
cd "$VIMHOME"

./install-vimrc.sh

vim +PlugInstall +qall || warn "Can't install Vim plugins."

echo "chiahao's MacVim configuration is installed."
