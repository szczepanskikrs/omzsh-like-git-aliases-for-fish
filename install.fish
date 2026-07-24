#!/usr/bin/env fish

set -l script_dir (status dirname)
set -l source_file "$script_dir/conf.d/git_aliases.fish"
set -l target_dir "$HOME/.config/fish/conf.d"
set -l target_file "$target_dir/git_aliases.fish"

mkdir -p "$target_dir"

if test -f "$source_file"
    ln -sf "$source_file" "$target_file"
    echo "✓ Utworzono dowiązanie symboliczne: $target_file -> $source_file"
    echo "✓ Skróty Oh My Zsh Git dla Fish Shell zostały pomyślnie zainstalowane!"
else
    echo "✗ Błąd: Nie znaleziono pliku $source_file"
    exit 1
end
