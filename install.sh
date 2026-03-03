#!/bin/bash

# Hyprland Dotfiles Installer
# Automatic installation script for Hyprland configuration

set -e

echo "=========================================="
echo "  Hyprland Dotfiles Installer"
echo "=========================================="
echo ""

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if running on Arch-based system
if ! command -v pacman &> /dev/null; then
    echo -e "${RED}Error: This script requires Arch Linux or EndeavourOS${NC}"
    exit 1
fi

# Install packages
echo -e "${BLUE}[1/3] Installing required packages...${NC}"
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm \
    hyprland hyprpaper hyprcursor hyprlock hyprpicker \
    kitty waybar mako rofi-wayland \
    wl-clipboard \
    wayland wayland-protocols \
    qt5-wayland qt6-wayland \
    polkit polkit-kde-agent \
    xdg-desktop-portal-hyprland xdg-user-dirs \
    ttf-dejavu ttf-liberation noto-fonts \
    libnotify \
    swww grim slurp \
    brightnessctl playerctl \
    nm-connection-editor networkmanager \
    ghostty

echo -e "${GREEN}✓ Packages installed${NC}"
echo ""

# Copy configurations
echo -e "${BLUE}[2/3] Copying configurations...${NC}"

mkdir -p ~/.config/hypr
mkdir -p ~/.config/waybar
mkdir -p ~/.config/kitty
mkdir -p ~/.config/ghostty
mkdir -p ~/.config/mako
mkdir -p ~/.config/rofi

cp -r hypr/* ~/.config/hypr/
cp -r waybar/* ~/.config/waybar/
cp -r kitty/* ~/.config/kitty/
cp -r ghostty/* ~/.config/ghostty/
cp -r mako/* ~/.config/mako/
cp -r rofi/* ~/.config/rofi/ 2>/dev/null || true

mkdir -p ~/.config/hypr/wallpapers
cp wallpapers/* ~/.config/hypr/wallpapers/ 2>/dev/null || true

echo -e "${GREEN}✓ Configurations copied${NC}"
echo ""

# Enable NetworkManager
echo -e "${BLUE}[3/3] Enabling NetworkManager...${NC}"
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

echo -e "${GREEN}✓ NetworkManager enabled${NC}"
echo ""

echo -e "${GREEN}=========================================="
echo "  Installation Complete! 🎉"
echo "==========================================${NC}"
echo ""
echo "Next steps:"
echo "1. Log out and select Hyprland at login"
echo "2. Press Super + R to open the application launcher"
echo "3. Press Super + Return to open a terminal"
echo ""
echo "For more info, see README.md"
