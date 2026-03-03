# --- Alias pour GIT ---
# Ajoute, commit et push en une seule commande
alias gpsh='git add . && git commit -m "update" && git push'
# Voir l'état du dépôt rapidement
alias gst='git status'
# Voir l'historique joliment
alias glog='git log --oneline --graph --all'

# --- Alias pour ARCH (Pacman & Yay) ---
alias update='sudo pacman -Syu && yay -Syu'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

# --- Alias pour HYPRLAND ---
# Editer ta config rapidement
alias conf-hypr='nano ~/.config/hypr/hyprland.conf'
# Recharger Waybar si elle bug
alias rb-waybar='killall waybar && waybar &'
