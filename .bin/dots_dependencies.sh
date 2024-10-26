#!/usr/bin/env sh
#
#
curl -fsSL https://bun.sh/install | bash && \
  sudo ln -s $HOME/.bun/bin/bun /usr/local/bin/bun
#some dependencies
sudo pacman -S git emacs vim kvantum fastfetch fuzzel kitty qt5ct qt6ct ranger hypridle hyprlock hyprpaper pipewire libgtop bluez bluez-utils btop networkmanager dart-sass wl-clipboard brightnessctl swww python gnome-bluetooth-3.0 pacman-contrib power-profiles-daemon polkit-gnome fortune-mod cowsay
yay -S grimblast-git gpu-screen-recorder hyprpicker matugen-bin python-gpustat aylurs-gtk-shell-git pokeget
#installing HyprPanel
git clone https://github.com/Jas-SinghFSU/HyprPanel.git && \
  ln -s $(pwd)/HyprPanel $HOME/.config/ags
#installing doom emacs
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
