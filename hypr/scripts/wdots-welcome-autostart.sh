#!/bin/bash
if [ ! -f $HOME/.cache/wdots-welcome-autostart ] ;then
    echo "Autostart of wdots Welcome App enabled."
    if [ -f $HOME/dotfiles/apps/wdots_Welcome-x86_64.AppImage ] ;then
        echo "Starting wdots Welcome App ..."
        sleep 2
        $HOME/dotfiles/apps/wdots_Welcome-x86_64.AppImage
    else
        echo "wdots Welcome App not found."
    fi

else
    echo "Autostart of wdots Welcome App disabled."
fi