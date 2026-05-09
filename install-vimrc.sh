#!/bin/sh
set -eu

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

link_file() {
    src=$1
    dest=$2

    if [ -L "$dest" ]; then
        if [ "$dest" -ef "$src" ]; then
            echo "$dest already points to $src."
            return
        fi
        current=$(readlink "$dest")
        die "$dest already exists and points to $current."
    fi

    [ -e "$dest" ] && die "$dest already exists."
    ln -s "$src" "$dest"
    echo "Linked $dest -> $src."
}

script_dir=$(CDPATH= cd -- "$(dirname "$0")" && pwd)

[ -f "$script_dir/vimrc" ] || die "$script_dir/vimrc does not exist."
[ -f "$script_dir/gvimrc" ] || die "$script_dir/gvimrc does not exist."

link_file "$script_dir/vimrc" "$HOME/.vimrc"
link_file "$script_dir/gvimrc" "$HOME/.gvimrc"

echo "Vim startup files are installed."
