#!/usr/bin/env bash
#-----------------------------------------------------
#  ░█████╗░██████╗░░█████╗░██╗░░██╗███╗░░░███╗░█████╗░
#  ██╔══██╗██╔══██╗██╔══██╗██║░░██║████╗░████║██╔══██╗
#  ███████║██████╔╝██║░░╚═╝███████║██╔████╔██║██║░░██║
#  ██╔══██║██╔══██╗██║░░██╗██╔══██║██║╚██╔╝██║██║░░██║
#  ██║░░██║██║░░██║╚█████╔╝██║░░██║██║░╚═╝░██║╚█████╔╝
#  ╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝░╚════╝░
#-----------------------------------------------------

echo -e "----------------------------------------------------"
echo -e " ░█████╗░██████╗░░█████╗░██╗░░██╗███╗░░░███╗░█████╗░ "
echo -e " ██╔══██╗██╔══██╗██╔══██╗██║░░██║████╗░████║██╔══██╗ "
echo -e " ███████║██████╔╝██║░░╚═╝███████║██╔████╔██║██║░░██║ "
echo -e " ██╔══██║██╔══██╗██║░░██╗██╔══██║██║╚██╔╝██║██║░░██║ "
echo -e " ██║░░██║██║░░██║╚█████╔╝██║░░██║██║░╚═╝░██║╚█████╔╝ "
echo -e " ╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝░╚════╝░ "
echo -e "-----------------------------------------------------"
echo -e " █▄▄ █▄█   ▄▀█ ▀█▀ █▀▄▀█ █▀█ ▀█ █▄▀ █                "
echo -e " █▄█ ░█░   █▀█ ░█░ █░▀░█ █▄█ █▄ █░█ █                "
echo -e "-----------------------------------------------------"

#Add parallel downloading
sudo sed -i 's/^#Para/Para/' /etc/pacman.conf

#Enable multilib
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf
pacman -Sy --noconfirm

echo -e "\nInstalling Base System\n"

PKGS=(
'cmatrix'
'code' # Visual Studio code
'efibootmgr' # EFI boot
'filelight'
'fzf'
'fuseiso'
'gamemode'
'gimp' # Photo editing
'git'
'gnome-disk-utility'
'go'
'gparted' # partition management
'grep'
'grub-customizer'
'gst-libav'
'gst-plugins-good'
'gst-plugins-ugly'
'gst-plugins-base'
'gst-plugins-base-libs'
'gufw'
'gwenview'
'htop'
'jdk-openjdk' # Java 17
'kcodecs'
'kdeconnect'
'kvantum-qt5'
'lsof'
'lutris'
'mpv'
'piper'
'powerdevil'
'powerline-fonts'
'print-manager'
'qemu'
'ranger'
'snapper'
'system-config-printer'
'terminus-font'
'traceroute'
'unrar'
'vim'
'virt-manager'
'virt-viewer'
'vlc'
'wget'
'wine'
'wine-gecko'
'wine-mono'
'winetricks'
'zip'
'zsh-syntax-highlighting'
'zsh-autosuggestions'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done
