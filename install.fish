#!/usr/bin/env fish

set -l script_dir (realpath (dirname (status filename)))
set -l source_file "$script_dir/conf.d/git_aliases.fish"
set -l target_dir "$HOME/.config/fish/conf.d"
set -l target_file "$target_dir/git_aliases.fish"

mkdir -p "$target_dir"

if test -f "$source_file"
    ln -sf "$source_file" "$target_file"
    echo "Linked $source_file -> $target_file"
    echo "Done."
else
    echo "Error: $source_file not found."
    exit 1
end
