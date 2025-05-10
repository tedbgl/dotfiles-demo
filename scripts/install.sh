#!/bin/bash

echo "---------------------------------"
echo ">            1/10 SYU           <"
echo "---------------------------------"
sudo pacman -Sy && sudo pacman -Syu 

echo "---------------------------------"
echo ">   2/10 installing Firefox     <"
echo "---------------------------------"
sudo pacman -S Firefox

echo "---------------------------------"
echo ">    3/10 Installing Discord    <"
echo "---------------------------------"
sudo pacman -S vesktop

echo "---------------------------------"
echo ">      4/10 Installing yay      <"
echo "---------------------------------"
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

echo "---------------------------------"
echo ">      5/10 Installing zsh      <"
echo "---------------------------------"
sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "---------------------------------"
echo ">   6/10 Installing Terminal    <"
echo "---------------------------------"
sudo pacman -S kitty ghostty

echo "---------------------------------"
echo ">    7/10 Installing DE         <"
echo "---------------------------------"
sudo pacman -S hyprland hyprlock waybar rofi

echo "---------------------------------"
echo ">    8/10 Installing CLI tools  <"
echo "---------------------------------"
sudo pacman -S eza fzf bat jp2a

echo "---------------------------------"
echo ">    9/10 Installing Dotfiles   <"
echo "---------------------------------"
git clone https://github.com/tedbgl/dotfiles-demo

echo "---------------------------------"
echo ">     10/10 Set zsh default     <"
echo "---------------------------------"
chsh -s /usr/bin/zsh
