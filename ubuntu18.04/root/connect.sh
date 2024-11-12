#!/bin/bash

insmod /lib/modules/5.10.227-licheepi-zero+/kernel/drivers/staging/rtl8723bs/r8723bs.ko

ifconfig wlan0 up

wpa_supplicant -B -c /etc/wpa_supplicant.conf -i wlan0

udhcpc -i wlan0

wpa_cli -iwlan0 status
