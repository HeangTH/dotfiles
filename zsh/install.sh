#!/usr/bin/env bash

echo "Installing ZSH"

if ! is-executable brew -o ! is-executable curl; then
  echo "Skipped: npm (missing: brew and/or curl)"
  return
fi

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing Oh-My-ZSH! into: $ZSH"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
  echo "Pulling Oh-My-ZSH"
  git -C "$HOME/.oh-my-zsh" pull
fi

echo "Installing themes into $HOME/.oh-my-zsh/custom"
sh $DOTFILES_ROOT/zsh/theme.sh

if [ -f ~/.zshrc.pre-oh-my-zsh ] || [ -h ~/.zshrc.pre-oh-my-zsh ]; then
  echo "Found and restored ~/.zshrc.pre-oh-my-zsh"
  mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
fi

# Custom Plugins
#git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
#git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

if [[ ! "$SHELL" == "/bin/zsh" ]]; then
  chsh -s /bin/zsh
else
  echo "current shell already was $SHELL"
fi

# Install kubectl plugins
plugins=(exec-as prompt images tree)
if kubectl krew &> /dev/null; then
    for plugin in $plugins; do
        kubectl krew install "${plugin}"
    done
else
    echo "Command \"kubectl krew\" is not found"
fi

# Kube no trouble
#   https://github.com/doitintl/kube-no-trouble
sh -c "$(curl -sSL https://git.io/install-kubent)"
