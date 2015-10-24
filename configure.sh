SCRIPT_DIR=$(pwd)

ln -s "$SCRIPT_DIR/dotfiles/gitconfig" "$HOME/.gitconfig"
ln -s "$SCRIPT_DIR/dotfiles/vimrc" "$HOME/.vimrc"


echo '' >> "$HOME/.zshrc"
echo "# leosartaj/bin/dotfiles" >> "$HOME/.zshrc"
echo "source $SCRIPT_DIR/dotfiles/alias" >> "$HOME/.zshrc"
echo "source $SCRIPT_DIR/dotfiles/env" >> "$HOME/.zshrc"
echo "source $SCRIPT_DIR/dotfiles/func" >> "$HOME/.zshrc"
echo "source $SCRIPT_DIR/dotfiles/prompt" >> "$HOME/.zshrc"
