# README

This repo is setup as a baseline for developer to quickly install the application and getting ready to start. The content of this file is largely taken from [Zach Holman's version](https://github.com/holman/dotfiles).

# WTF is Dotfiles?

[Dotfiles](https://dotfiles.github.io/) is a bootstrap script to automate the setup of your softwares, configurations, and environment.

# How can I customize this for my own use?

Fork into your own repo then configure to your heart content.

# Installation

**Remark**: Because I use **Synology Drive** to Keep my private keys. So there is additional steps needed before run **bootstrap**. Noted that you can use Dropbox instead of Synology Drive.

1. create symlink from direcotory you store SSH keys to your .ssh in home directory. For example,

```sh
ln -s ~/SynologyDrive/Keys\ and\ Certs/SSH\ Keys/ ~/.ssh
```

2. Run this:

```sh
git clone git@github.com:HeangTH/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

# What application need to manually install?

- Forticlient VPN (https://www.fortinet.com/support/product-downloads)
- RightLang (http://www.rightlang.com/mac/)


# Terminal configuration

This script prioritise `iTerm2` and `ZSH` with [**Oh My ZSH!**](https://github.com/robbyrussell/oh-my-zsh) based configuration. It will setup [`agnoster`](https://github.com/agnoster/agnoster-zsh-theme) theme by default however this does not perfectly working out of the box and require manual setup to work. The script will installs the required fonts([Powerline](https://github.com/powerline/fonts)) and [Solarized](https://ethanschoonover.com/solarized/) colorscheme for it to be ready to use.

You will need to go to the Preference setting of your iTerm2 as follow:

- Go to Profile > Colors > Color Presets > Pick `Solarized Dark` or `Solarized Light`
- Go to Profile > Text > Change Font > Search for `Powerline` > Pick whatever you like but `Noto Mono for Powerline` is pretty nice.

After this you may remove Solarized folder from `~/.dotfiles/zsh` if necessary.

# Python

See [python.md](python.md)

# Shortcuts

- To see all shortcuts configured type `alias`.
- VS Code is a default code editor installed and it can be open with just `e`; For example; `e index.html` will open index.html in VS Code.
- Open dot file can be done with `dot -e`
- Option and arrow allow you to jump to the next word to the left or right `⌥+->`.
- Option + Control + arrow jump to the end of the line `⌥+⌘+<-`
- [VS Code OSX Shortcuts](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)

## Verify

### XCode

```bash
brew config
# to cleanup
sudo rm -rf /Library/Developer/CommandLineTools
xcode-select --install
```

## Fix Quicklook

```bash
# see quarantines
xattr -r ~/Library/QuickLook
# remove from quarantine
xattr -d -r com.apple.quarantine ~/Library/QuickLook
```
