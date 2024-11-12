#!/bin/bash

# https://www.cnblogs.com/tocy/p/linux-swap-cmd-summary.html
swapoff -a

dd if=/dev/zero of=swapfile bs=1M count=200

mkswap swapfile

swapon swapfile

echo "add (swapfile swap swap defaults 0 0) at /etc/fstab"
