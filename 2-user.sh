#!/usr/bin/env bash
#-----------------------------------------------------
#  ░█████╗░██████╗░░█████╗░██╗░░██╗███╗░░░███╗░█████╗░
#  ██╔══██╗██╔══██╗██╔══██╗██║░░██║████╗░████║██╔══██╗
#  ███████║██████╔╝██║░░╚═╝███████║██╔████╔██║██║░░██║
#  ██╔══██║██╔══██╗██║░░██╗██╔══██║██║╚██╔╝██║██║░░██║
#  ██║░░██║██║░░██║╚█████╔╝██║░░██║██║░╚═╝░██║╚█████╔╝
#  ╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝░╚════╝░
#-----------------------------------------------------

echo -e "\nINSTALLING AUR SOFTWARE\n"

echo "CLONING: YAY"
cd ~
git clone "https://aur.archlinux.org/yay.git"
cd ${HOME}/yay
makepkg -si --noconfirm
cd ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone "https://github.com/atmozki/zshvimrc.git"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/powerlevel10k
cp "$HOME/zshvimrc/.zshrc" $HOME/.zshrc
cp "$HOME/zshvimrc/.vimrc" $HOME/.vimrc

PKGS=(
'autojump'
'ani-cli-git' #anime-terminal-client
'awesome-terminal-fonts'
'brave-bin' # Brave Browser
'dolphin-megasync-git'
'epson-inkjet-printer-escpr' #printer drivers
'github-desktop-bin' # Github Desktop sync
'google-chrome' #chrome
'konsave'
'komorebi' #livewallpaper
'latte-dock-git'
'libpamac-aur'
'lightly-git'
'lightlyshaders-git'
'megasync' #mega.nz cloud
'mpc-qt' #media player
'nerd-fonts-fira-code'
'nordic-darker-standard-buttons-theme'
'nordic-darker-theme'
'nordic-kde-git'
'nordic-theme'
'notion-app-enhanced' #notion-app-enhanced
'noto-fonts-emoji'
'oneko' #cat-on-terminal
'pamac-aur'
'plasma-pa'
'ocs-url' # install packages from websites
'sddm-nordic-theme-git'
'snapper-gui-git'
'spotify'
'spotify-adblock-git'
'ttf-droid'
'ttf-hack'
'ttf-meslo' # Nerdfont package
'ttf-ms-fonts'
'ttf-roboto'
'whatsapp-nativefier' #whatsapp
'zafiro-icon-theme-git'
)

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done

echo -e "\nDone!\n"
exit