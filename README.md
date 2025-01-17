<p align="center">
  <img src="https://github.com/bcook128/updateall/blob/master/updateall04.png" alt="Updateall" width="250">
</p>

# Updateall

## Description

**Updateall** is a script that runs updates/upgrades for multiple package managers and software in a single command on Linux systems. It runs updates for all the major package managers and terminal customization software like *oh-my-posh*, and logs the results.

## Installation

```bash
git clone https://github.com/bcook128/updateall.git
cd /updateall
chmod +x install.sh
bash ./install.sh
```

## Usage

```bash
updateall [-s <package_manager>] [--version] [--help]
```

### Options

* ```-s <package_manager>```: Skip running updates for the specified package manager. Supported package managers include apt, pacstall, snap, flatpak, deb-get, pipx, pacman, yay, dnf, brew, cargo, and zypper. It also updates oh-my-posh.
* ```-v, --version```: Display the version of the updateall script.
* ```-h, --help```: Display usage information about the updateall script.
* ```-l, --logs```: Display last updateall log.

## Files

* $HOME/log/updateall: directory where updateall stores log files
* /usr/share/bin/updateall: location of updateall script
* /usr/share/man/man1/updateall.1.gz: location of updateall manpages

## Version

updateall 2.0

## History

Version 2.0: Added support for homebrew (brew), nix package manager, and rust (cargo).

Version 1.9: Updated to run updates for pacstall and KDE Neon specific apt updates.

Version 1.8: Added option to view most recent updateall log file.

Version 1.7: Updated support for oh-my-posh and added options for skipping package managers.

## Notes

This script requires sudo privileges to execute the package manager updates.

## Bugs

No known bugs

## Examples

Run updates/upgrades for all installed package managers:

```bash
updateall
```

Update all packages but skip flatpak and pipx:

```bash
updateall -s flatpak -s pipx
```

## Author

Brad Cook [bcook1281@gmail.com](bcook1281@gmail.com)
