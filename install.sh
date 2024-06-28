#!/bin/bash

# Sudo authentication
sudo -v

# Declare variables for paths
manpage_path="/usr/share/man/man1"
script_path="/usr/local/bin"

install_manpage() {
    manpage_file="$1"
    sudo cp "$manpage_file" "$manpage_path/"
    sudo mandb
}

install_script() {
    script_file="$1"
    sudo cp "$script_file" "$script_path/"
    sudo chmod +x "$script_path/$(basename "$script_file")"
}

if [[ "$(id -u)" -ne 0 ]]; then
    echo "Please run script as root or using sudo."
    exit 1
fi

install_manpage "./updateall.1.gz"

install_script "./updateall"

echo "Installation complete."
