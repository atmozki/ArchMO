#!/bin/bash

    ./1-setup.sh
    arch-chroot /mnt /usr/bin/runuser -u $username -- /home/$username/ArchMO/2-user.sh
    ./3-post-setup.sh