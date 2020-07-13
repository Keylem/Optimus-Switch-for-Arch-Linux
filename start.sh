#!/bin/bash
sudo pacman -S glib2 json-glib libsoup dbus-glib polkit vte3 gtk3 libnotify desktop-file-utils gnutls git appstream-glib archlinux-appstream-data pacman
makepkg -sic PKGBUILD
sudo sed --in-place "s/#EnableAUR/EnableAUR/" "/etc/pamac.conf"
sudo pacman -S nvidia
pamac build optimus-manager-qt
sudo pacman -S bbswitch
systemctl start optimus-manager.service 
echo "dua etmeye basla"
