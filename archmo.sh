#!/bin/bash

    arch-chroot /mnt /root/ArchMO/1-setup.sh
    arch-chroot /mnt /usr/bin/runuser -u $username -- /home/$username/ArchMO/2-user.sh
    arch-chroot /mnt /root/ArchMO/3-post-setup.sh