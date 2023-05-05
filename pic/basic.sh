#!/bin/bash
echo "" && echo " BASIC SETUP " && echo "" 
echo "These packages will be installed:" \n && echo "jq pip flatpak ffmpeg yt-dlp mplayer build-essential apt-transport-https git curl wget htop vim gnome-shell vlc zenity chromium ruby terminator"
read -p "Do you want to proceed? [Y/n] " choice
case "$choice" in
  y|Y ) 
    # Execute
    sudo apt install jq python3-pip flatpak ffmpeg yt-dlp mplayer build-essential apt-transport-https git curl wget htop vim gnome-shell vlc zenity chromium ruby terminator --yes && sudo apt update && echo " Your basic setup is complete " && echo " Thanks for choosing szmelc <3 " 
    ;;
  n|N ) 
    echo "Exiting"
    exit 1
    ;;
  * ) 
    echo "Invalid selection, exiting"
    exit 1
    ;;
esac

