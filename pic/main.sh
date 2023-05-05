#!/bin/bash

# Define the menu options
OPTIONS=(1 "Minimal Setup"
         2 "Basic Setup"
         3 "Full Setup"
         4 "README.md & Config"
         E "Exit")

# Define the menu title
TITLE=" [PIC] "

# Set the terminal emulator to monochrome
tput initc 7 0 0 0
tput initc 0 1000 1000 1000
tput initc 10 10 10 10
tput initc 4 250 250 250

# Show the menu and capture the user's selection
CHOICE=$(dialog --clear \
                --title "$TITLE" \
                --menu "Choose one of the following options:" \
                15 40 5 \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

# Reset the terminal emulator to its default color scheme
tput sgr0

# Handle the user's selection
case "$CHOICE" in
    1) # Run Script 1
        clear && bash pic/min.sh
        ;;
    2) # Run Script 2
        clear && bash pic/basic.sh
        ;;
    3) # Run Script 3
        clear && bash pic/full.sh
        ;;
    4) # README.md + Config files
        clear && cat pic/README.md | more
        ;;
    E) # Exit
        exit
        ;;
esac
