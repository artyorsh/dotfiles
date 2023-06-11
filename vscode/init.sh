#!/bin/bash
current_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

VSCODE_PREFS_DIR="$HOME/Library/Application Support/Code/User"

# Default VSCode settings location is not available initially
mkdir -p $VSCODE_PREFS_DIR

ln -sfv "$current_dir/settings.json" "$VSCODE_PREFS_DIR/settings.json"
ln -sfv "$current_dir/keybindings.json" "$VSCODE_PREFS_DIR/keybindings.json"

cat "$current_dir/extensions" | xargs -n1 code --install-extension
