#!/usr/bin/env bash
# # portable for most systems... locates BASH in users $PATH

# [!IMPORTANT]: Be sure to set execution permissions for your account using:
# ```
# sudo chmod +x script.sh
# ```
# Or equivalent.
#
# ALSO, DO NOT move the script file outside of the directory you downloaded.
printf "> [!IMPORTANT]\n> Keep in mind, this script is made for Devuan GNU/Linux and child distributions: your milage may vary.\n"

printf "\nUpdating repositories...\n"
sudo apt update

printf "\nInstalling dependencies...\n"
sudo apt install dunst i3 i3-wm i3status maim polybar picom rofi screenfetch xfce4-terminal xfce4-power-manager yaru-theme-icon yaru-theme-gtk

printf "\nCopying dotfiles to $USER's .config...\n"

# !(install.sh) should exclude the script file in this copy exchange
cp -r * $HOME/.config/
rm $HOME/.config/install.sh

printf "\n> [!TIP]\n> Install XLibre for a better experience! :D #LongLiveXLibre\n"
printf "\nMore info:\n"
printf "\n\t- Devuan-based specific:\n\thttps://github.com/xlibre-debian\n"
printf "\n\t- General:\n\thttps://github.com/X11Libre/xserver\n"

printf "\n> [!TIP]\n> Be sure to set i3 to launch upon login :D\n"
printf "\nMore info:\n\thttps://search.brave.com/search?q=how+to+set+i3+to+launch+after+login+devuan&spellcheck=0&summary=1&conversation=08d1bc3ec22f49a0b4ac8d088376cf328d38\n"
