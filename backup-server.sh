#!/bin/bash

# This script assumes you've setup a remote path with the rclone tool on OneDrive
# It also assumes that you've started a tmux terminal to run your server


# Datetime for backup timestamp (NA)
DT=$(date "+%Y%m%d-%H%M%S")
# A project name to identify your minecraft server
MINECRAFT_PROJECT_NAME=minecraft-custom
# Tmux terminal name that is running the minecraft server
TMUX_TERM_NAME=minecraft
# Path to location of the server
SERVER_PATH=/home/tsa_soonann/$MINECRAFT_PROJECT_NAME/
# Folder to backup in the minecraft server 
SERVER_FOLDER=world
# Remote backup location 
REMOTE_BACKUP_PATH=onedrive:minecraft-server/$MINECRAFT_PROJECT_NAME/backups/
# Temporary location to save the zip file
TMP_ZIP_PATH=/tmp/$MINECRAFT_PROJECT_NAME-$DT.zip


tmux send-keys -t $TMUX_TERM_NAME save-all ENTER
sleep 5
tmux send-keys -t $TMUX_TERM_NAME save-off ENTER
cd $SERVER_PATH
zip -r $TMP_ZIP_PATH $SERVER_FOLDER 
rclone copy $TMP_ZIP_PATH $REMOTE_BACKUP_PATH
rm $TMP_ZIP_PATH
tmux send-keys -t $TMUX_PANE_NAME save-on ENTER
