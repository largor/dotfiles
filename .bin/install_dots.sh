#!/usr/bin/env sh
#
#some dependencies and programs i use from AUR & pacman.
#emacs is my preferred text editor (vim a secondary for terminal use).
#texlive required for emacs to create, and preview LaTex files.
#kvantum for managing qt formatting.
#hypridle, hyprlock, hyprpaper, and grimblast are a part of the hyprland eco-system.
#gnome-disk-utility is a handy tool for managing disks.
#dosfstools and ntfsprogs for formating usbs to be compatible with Windows systems (required for use with gnome-disk-utility)
#ranger & dolphin used for file managers.
#mpd & ncmpcpp as music player.  Mopidy, mopidy-mpd, and mopidy-subidy allow ncmpcpp to connect to my navidrome server.
#mpv for video player.
sudo pacman -S emacs vim kvantum fastfetch\
	fuzzel kitty qt5ct qt6ct ranger hypridle\
	hyprlock hyprpaper pipewire libgtop bluez\
	bluez-utils btop networkmanager dart-sass\
	wl-clipboard brightnessctl swww python\
	gnome-bluetooth-3.0 pacman-contrib\
	power-profiles-daemon polkit-gnome\
	fortune-mod cowsay python-pillow pkgfile firefox\
	keepassxc mpv mpd ncmpcpp feh dolphin qbittorrent\
	steam unzip ark texlive spotify-launcher audiocd-kio\
	gnome-disk-utility dosfstools ntfsprogs mopidy\
	python-pip nwg-look nwg-displays ispell libreoffice-still\
 	retroarch calibre sdcv tmux

yay -S grimblast-git gpu-screen-recorder hyprpicker\
	matugen-bin python-gpustat aylurs-gtk-shell-git\
	pokeget openssl-1.0 rclone-browser\
	heroic-games-launcher-bin nicotine-plus\
	jellyfin-media-player mopidy-mpd mopidy-subidy\
	brave-bin signal-desktop catppuccin-gtk-theme-macchiato\
 	papirus-folders-catppuccin-git downgrade cava libretro\
  	epy-ereader-git

#Bun is dependency for HyprPanel
curl -fsSL https://bun.sh/install | bash && \
  sudo ln -s $HOME/.bun/bin/bun /usr/local/bin/bun

#installing HyprPanel
mkdir $HOME/.bin
git clone https://github.com/Jas-SinghFSU/HyprPanel.git $HOME/.bin && \
  ln -s $HOME/.bin/HyprPanel $HOME/.config/ags
$HOME/.config/ags/install_fonts.sh

#installing doom emacs
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

#tmux
mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.1.0 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux

cp -rf $HOME/dotfiles/. $HOME
