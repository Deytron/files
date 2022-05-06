#!/bin/bash
####################################
#
# Backup script for my Linux computer
# Last update: 05/05/2020
#
####################################

# Check if script is running as sudo
if [ "$EUID" -ne 0 ]
  then echo "Please run as sudo"
  exit
fi

# Initial packages to install
sudo pacman -S --needed base-devel --noconfirm
sudo pacman -Sy paru --noconfirm
paru -Syyuu --noconfirm
paru -S zsh

# Git clone all necessary git repositories for work
# Ytrack preprod and prod
mkdir Ytrack-01
cd Ytrack-01
git clone https://git.ytrack.learn.ynov.com/ynov/ytrack.git
git clone https://ynov.01-edu.org/git/ynov/ytrack.git
# Projects in home folder
cd ~
git clone https://github.com/Jicay/java-test.git


# Restore .zshrc

