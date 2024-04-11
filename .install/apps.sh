#!/bin/bash

# ------------------------------------------------------
# Apps Installation
# ------------------------------------------------------

echo -e "${GREEN}"
figlet "wdots Apps"
echo -e "${NONE}"

if [ ! -d $HOME/.local/share/applications/ ] ;then
    mkdir $HOME/.local/share/applications
    echo ":: $HOME/.local/share/applications created"
fi

sed -i "s|HOME|${HOME}|g" $HOME/dotfiles/apps/wdots-welcome.desktop
cp $HOME/dotfiles/apps/wdots-welcome.desktop $HOME/.local/share/applications
echo ":: wdots Welcome App installed successfully"

sed -i "s|HOME|${HOME}|g" $HOME/dotfiles/apps/wdots-dotfiles-settings.desktop
cp $HOME/dotfiles/apps/wdots-dotfiles-settings.desktop $HOME/.local/share/applications
echo ":: wdots Dotfiles Settings App installed successfully"

echo 