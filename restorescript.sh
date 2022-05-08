#!/bin/bash
####################################
#
# Backup script for my Linux computer
# Last update: 05/05/2020
#
####################################

# Variables
PACKAGES="betterdiscord-installer bitwarden cabextract conan containerd cpupower \
 crun deluge discount docker docker-compose dolphin-emu-git \
 dynamips dolphin-plugins egl-wayland etcher figma-linux flatpak fsearch gamemode go \
 gnome-keyring gns3-gui gns3-server google-chrome gparted hid-nintendo-dkms \
 howdy htop joycond-cemuhook-git jre-openjdk koi ksshaskpass kvantum kwin-bismuth lutris melonds \
 mono moonlight-qt nano neofetch nodejs notion-app npm obs-studio onlyoffice-bin pcsx2 polymc polypane \
 proton-ge-custom-bin proton-caller qt6-wayland remmina remmina-plugin-rdesktop seahorse spotify-qt spotifyd sshpass \
 teams-for-linux terraform tigervnc tlpui tree ubridge vmware-workstation vpcs vvvvvv wine winetricks wireguard-tools \
 wol xdotool youtube-dl-git yuzu-early-access plasma-wayland-session xorg-xwayland visual-studio-code-bin"

# Check if script is running as sudo
if [ "$EUID" -ne 0 ]
  then echo "Please run as sudo"
  exit
fi

# Initial commands
git config --global credential.helper store

# Initial packages to install
sudo pacman -S --needed base-devel --noconfirm
sudo pacman -Sy paru --noconfirm
paru -Syyuu --noconfirm
paru -S linux517-headers
paru -S $PACKAGES --noconfirm

# Git clone all necessary git repositories for work
# Ytrack preprod and prod
cd /home/lemalgache/
mkdir Ytrack-01
cd Ytrack-01
git clone https://git.ytrack.learn.ynov.com/ynov/ytrack.git
git clone https://ynov.01-edu.org/git/ynov/ytrack.git

# Projects in home folder
cd /home/lemalgache/
git clone https://github.com/Jicay/java-test.git
git clone https://ynov.01-edu.org/git/RomainRanaivoson/challenge-js-bordeaux-all-available.git
git clone https://ynov.01-edu.org/git/RomainRanaivoson/piscine-docker.git
git clone https://github.com/Deytron/web-cv.git

# Tar backup archive
cd /home/lemalgache/
tar czf backup-archive.tgz backup-files

# Restore .zshrc
cd /home/lemalgache/


