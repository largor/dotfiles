#!/usr/bin/env sh
#
#
#Bun is dependency for HyprPanel
curl -fsSL https://bun.sh/install | bash && \
  sudo ln -s $HOME/.bun/bin/bun /usr/local/bin/bun

#some dependencies and programs i use
sudo pacman -S emacs vim kvantum fastfetch\
	fuzzel kitty qt5ct qt6ct ranger hypridle\
	hyprlock hyprpaper pipewire libgtop bluez\
	bluez-utils btop networkmanager dart-sass\
	wl-clipboard brightnessctl swww python\
	gnome-bluetooth-3.0 pacman-contrib power-profiles-daemon\
	polkit-gnome fortune-mod cowsay python-pillow pkgfile firefox\
	keepassxc mpv mpd ncmpcpp feh dolphin qbittorrent steam

#some more dependencies and programs i use
yay -S grimblast-git gpu-screen-recorder hyprpicker\
	matugen-bin python-gpustat aylurs-gtk-shell-git\
	pokeget openssl-1.0 rclone-browser heroic-games-launcher-bin

#installing HyprPanel
git clone https://github.com/Jas-SinghFSU/HyprPanel.git && \
  ln -s $(pwd)/HyprPanel $HOME/.config/ags

#installing doom emacs
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
