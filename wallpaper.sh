#!/bin/bash
mkdir -p ~/Pictures/Wallpapers/unsplash
rm -f ~/Pictures/Wallpapers/unsplash/"$(date +%F)".png
curl -s -L -o ~/Pictures/"$(date +%F)".png "https://source.unsplash.com/random/1920x1200/?hacker"  > /dev/null
osascript -e "tell application \"System Events\" to set picture of every desktop to \"~/Pictures/Wallpapers/unsplash/$(date +%F).png\""
killall Dock
