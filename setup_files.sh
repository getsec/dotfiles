#!/bin/bash
ROOT_DIR=$(git rev-parse --show-toplevel)
# file we want to backup
FILES=$(cat << EOF
.zshrc
.aliases
.functions
.tmux/.tmux.conf
.tmux.conf
.config/nvim/init.vim
.config/alacritty/alacritty.yml
EOF
)


while IFS= read -r file; do
    SRC_FILE=$HOME/$file
    if [ -f "$SRC_FILE" ]; then
        # Create a symlink for that file here.
        cp -r $SRC_FILE $ROOT_DIR/$file
    fi
done <<< "$FILES"
