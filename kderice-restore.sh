#!/bin/bash

export PATH=$PATH:~/.local/bin
cp -r $HOME/ArchMO/dotfiles/* $HOME/.config/
yay -S --noconfirm konsave
pip install konsave
konsave -i $HOME/ArchMO/atmoz.knsv
sleep 1
konsave -a atmoz
