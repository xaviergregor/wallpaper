#!/bin/bash

# Creation du repertoire
mkdir -p ~/Pictures/Wallpapers

# Effacer le wallpaper du jour (option)
rm -f ~/Pictures/Wallpapers/"$(date +%F)".png

# Telechargement du wallpaper
curl -s -L -o ~/Pictures/Wallpapers/"$(date +%F)".png "https://source.unsplash.com/random/1920x1200/?hacker"  > /dev/null

# Utiliser le wallpaper comme fond d'ecran par defaut
osascript -e "tell application \"System Events\" to set picture of every desktop to \"~/Pictures/Wallpapers/$(date +%F).png\""

# On relance le Dock
killall Dock
