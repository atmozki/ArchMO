#!/bin/bash

yay -S --noconfirm konsave
pip install konsave
konsave -i $HOME/ArchMO/atmoz.knsv
sleep 1
konsave -a atmoz
