#!/usr/bin/env bash

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Installing Solarized
solarized_folder="$ZSH_CUSTOM/themes/solarized"
if [ ! -d "$solarized_folder" ]; then
  echo "Cloning Solarzied into $solarized_folder"
  git clone git://github.com/altercation/solarized.git "$solarized_folder"
else
  echo "Pulling Solarzied in $solarized_folder"
  git -C "$solarized_folder" pull
fi

## Installing powerlevel10k theme
powerlevel10k_folder="$ZSH_CUSTOM/themes/powerlevel10k"
if [ ! -d "$powerlevel10k_folder" ]; then
    echo "Cloning powerlevel10k into $powerlevel10k_folder"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$powerlevel10k_folder"
else
    echo "Pulling powerlevel10k in $powerlevel10k_folder"
    git -C "$powerlevel10k_folder" pull
fi
ln -s "$ZSH_CUSTOM/themes/powerlevel10k/powerlevel10k.zsh-theme" "$ZSH_CUSTOM/themes/powerlevel10k.zsh-theme"

# Install spaceship prompt and theme
spaceship_folder="$ZSH_CUSTOM/themes/spaceship-prompt"
if [ ! -d "$spaceship_folder" ]; then
    echo "Cloning SpaceShip into $spaceship_folder"
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$spaceship_folder"
else
    echo "Pulling SpaceShip in $spaceship_folder"
    git -C "$spaceship_folder" pull
fi
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

