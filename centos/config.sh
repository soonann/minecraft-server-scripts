#!/bin/bash

# Datetime for backup timestamp (NA)
export DT=$(date "+%Y%m%d-%H%M%S")
# A project name to identify your minecraft server
export MINECRAFT_PROJECT_NAME=minecraft-custom
# Tmux terminal name that is running the minecraft server
export TMUX_TERM_NAME=minecraft
# Path to location of the server
export SERVER_PATH=/home/tsa_soonann/$MINECRAFT_PROJECT_NAME/
# Folder to backup in the minecraft server 
export SERVER_FOLDER=world
# Remote backup location 
export REMOTE_BACKUP_PATH=onedrive:minecraft-server/$MINECRAFT_PROJECT_NAME/backups/
# Temporary location to save the zip file
export TMP_ZIP_PATH=/tmp/$MINECRAFT_PROJECT_NAME-$DT.zip
# Server jar file name 
export SERVER_JAR_FILENAME=forge-1.12.2-14.23.5.2815-universal.jar
