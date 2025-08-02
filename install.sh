#!/bin/bash

set -e

echo "Updating system and installing packages..."

# Systemupdate
sudo pacman -Syu --noconfirm

# Pacman-Pakete (offizielle Repos)
sudo pacman -S --noconfirm amd-ucode  wget hyprland hyprshot waybar rofi-wayland swaync kitty nemo lxappearance gamemode flatpak steam discord vulkan-tools neovim fastfetch openrgb plymouth  ttf-inter otf-font-awesome

# Google Chrome und Wallpaper Engine aus AUR
echo "Installing AUR packages with yay..."

# Prüfen ob yay installiert ist, sonst installieren
if ! command -v yay &> /dev/null; then
  echo "yay not found, installing yay..."
  sudo pacman -S --needed --noconfirm git base-devel
  git clone https://aur.archlinux.org/yay.git /tmp/yay
  cd /tmp/yay
  makepkg -si --noconfirm
  cd -
fi

yay -S --noconfirm google-chrome linux-wallpaperengine-git spotify wootility 

echo "Installation finished!"

