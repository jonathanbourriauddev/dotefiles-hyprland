# Dotfiles Hyprland

My personal Hyprland configuration with Catppuccin Mocha theme, Kitty, Ghostty, Waybar, Mako, and more.

## Features

✅ **Hyprland** - Tiling window manager  
✅ **Waybar** - Customizable status bar  
✅ **Kitty** - Terminal with Catppuccin Mocha  
✅ **Ghostty** - Terminal with Tokyo Night  
✅ **Rofi** - Application launcher  
✅ **Mako** - Notification daemon  
✅ **Swww** - Wallpaper daemon with animations  
✅ **Grim + Slurp** - Screenshot tool  

## Installation

### Automatic (Recommended)
```bash
git clone https://github.com/jonathanbourriauddev/dotefiles-hyprland.git
cd dotefiles-hyprland
chmod +x install.sh
./install.sh
```

### Manual

1. Install packages:
```bash
sudo pacman -Syu
sudo pacman -S hyprland waybar mako rofi-wayland kitty ghostty swww grim slurp wl-clipboard brightnessctl playerctl nm-connection-editor
```

2. Clone and copy configs:
```bash
git clone https://github.com/jonathanbourriauddev/dotefiles-hyprland.git
cd dotefiles-hyprland
cp -r hypr ~/.config/
cp -r waybar ~/.config/
cp -r kitty ~/.config/
cp -r ghostty ~/.config/
cp -r mako ~/.config/
cp -r rofi ~/.config/
```

## Configuration

### Hyprland
- Located in `~/.config/hypr/`
- Modular structure with separate config files
- AZERTY keyboard layout (10 workspaces)

### Kitty
- Catppuccin Mocha theme
- Opacity: 0.9
- Cursor: beam with trail

### Ghostty
- Tokyo Night theme
- Opacity: 0.9
- Cursor: beam with trail

## Keybinds

| Keybind | Action |
|---------|--------|
| `Super + Return` | Open terminal (Kitty) |
| `Super + R` | Open application launcher (Rofi) |
| `Super + 1-0` | Switch workspace |
| `Super + Shift + 1-0` | Move window to workspace |
| `Super + C` | Close window |
| `Super + V` | Toggle floating |
| `Super + F` | Toggle fullscreen |
| `Print` | Screenshot (grim + slurp) |

## Customization

All configs are modular and easy to customize:

- **Colors**: Edit `hypr/colors.conf` (Catppuccin Mocha)
- **Keybinds**: Edit `hypr/keybinds.conf`
- **Appearance**: Edit `hypr/appearance.conf`
- **Waybar**: Edit `waybar/config` and `waybar/style.css`

## System Info

- **OS**: Arch Linux (EndeavourOS)
- **Kernel**: Linux
- **Display Server**: Wayland
- **Font**: Monospace

## License

MIT

## Author

Jonathan Bourriaud - [@jonathanbourriauddev](https://github.com/jonathanbourriauddev)
