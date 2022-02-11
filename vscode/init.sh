VSCODE_PREFS_DIR="$HOME/Library/Application Support/Code/User"

# Default VSCode settings location is not available initially
mkdir -p $VSCODE_PREFS_DIR

ln -sfv $(readlink -f ./vscode/settings.json) "$VSCODE_PREFS_DIR/settings.json"
ln -sfv $(readlink -f ./vscode/keybindings.json) "$VSCODE_PREFS_DIR/keybindings.json"