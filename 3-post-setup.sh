#!/usr/bin/env bash
#-----------------------------------------------------
#  ░█████╗░██████╗░░█████╗░██╗░░██╗███╗░░░███╗░█████╗░
#  ██╔══██╗██╔══██╗██╔══██╗██║░░██║████╗░████║██╔══██╗
#  ███████║██████╔╝██║░░╚═╝███████║██╔████╔██║██║░░██║
#  ██╔══██║██╔══██╗██║░░██╗██╔══██║██║╚██╔╝██║██║░░██║
#  ██║░░██║██║░░██║╚█████╔╝██║░░██║██║░╚═╝░██║╚█████╔╝
#  ╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝░╚════╝░
#-----------------------------------------------------

echo -e "\nFINAL SETUP AND CONFIGURATION"

echo -e "\nChecking essential services"

systemctl enable cups.service
ntpd -qg
systemctl enable ntpd.service
systemctl disable dhcpcd.service
systemctl stop dhcpcd.service
systemctl enable NetworkManager.service
systemctl enable bluetooth
echo

# Replace in the same state
cd $pwd
echo "
###############################################################################
# Done - I GUESS!
###############################################################################
"
