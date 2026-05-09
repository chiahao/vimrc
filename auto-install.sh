#!/bin/sh
set -eu

VIMHOME=${VIMHOME:-"$HOME/.vim"}
VIMRC_REPO_URL=${VIMRC_REPO_URL:-}

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

script_dir=$(CDPATH= cd -- "$(dirname "$0")" && pwd)

if [ -d "$VIMHOME" ]; then
    if [ "$script_dir" -ef "$VIMHOME" ]; then
        echo "Using existing checkout at $VIMHOME."
    else
        die "$VIMHOME already exists."
    fi
else
    [ -z "$VIMRC_REPO_URL" ] && die "Set VIMRC_REPO_URL to this repository URL before running auto-install.sh."
    git clone "$VIMRC_REPO_URL" "$VIMHOME"
fi

cd "$VIMHOME"

./install-vimrc.sh

if command -v vim >/dev/null 2>&1; then
    vim +PlugInstall +qall || warn "Can't install Vim plugins."
else
    warn "vim not found; skip plugin installation."
fi

echo "chiahao's MacVim configuration is installed."
