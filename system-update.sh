#! /usr/bin/zsh

updated="'System Updated' 'Archlinux has been updated successfully. Dont forget update AUR packeges'"
failed="'Update failed' 'Something went wrong pacman cannot update the system. Use systemctl status system_update.service for more information'"

pacman -Syu --noconfirm &&\
sudo -u user DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send $updated||\
sudo -u user DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send $failed
