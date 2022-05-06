#!/bin/bash
####################################
#
# Backup script for my Linux computer
# Last update: 06/05/2020
#
####################################

# Check if script is running as sudo
if [ "$EUID" -ne 0 ]
  then echo "Please run as sudo"
  exit
fi

cd /home/lemalgache
# Folders to backup
backup_files="./vmware ./Vidéos ./Téléchargements ./Images ./Games ./Documents ./kmail_backup-05052022.zip ./.zshrc ./.zsh_history ./iourc.txt ./.ssh .steam/steam/skins/Metro\ 4.4/ ./.local/share/dolphin-emu ./.local/share/FasterThanLight ./.local/share/IntoTheBreach ./.local/share/VVVVVV ./.local/share/yuzu /etc/wireguard/ ./.config/BetterDiscord/plugins/ "

# Where to backup to.
dest="/home/lemalgache"

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest