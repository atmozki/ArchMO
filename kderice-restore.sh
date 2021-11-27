#!/bin/bash

read -p "Do you want to restore KONSAVE? [y/n]" answer
if [[ $answer = y ]] ; then
    yay -S --noconfirm konsave
    pip install konsave
    konsave -i $HOME/ArchMO/atmoz.knsv
    sleep 1
    konsave -a atmoz
fi
if [[ $answer = n ]] ; then
    echo "NOOO"
fi