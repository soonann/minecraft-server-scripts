#!/bin/bash

# Datetime for backup timestamp (NA)
export DT=$(date "+%d%m%Y-%H%M%S")
# A project name to identify your minecraft server
export MINECRAFT_PROJECT_NAME=minecraft-117
# Tmux terminal name that is running the minecraft server
export TERM_NAME=minecraft
# Path to location of the server
export SERVER_PATH=/home/$USER/games/minecraft/
# Folder to backup in the minecraft server 
export SERVER_FOLDER=world
# Remote backup location 
export REMOTE_BACKUP_PATH=onedrive:minecraft-117-backups/$MINECRAFT_PROJECT_NAME/backups/
# Temporary location to save the zip file
export TMP_ZIP_PATH=/tmp/$MINECRAFT_PROJECT_NAME-$DT.zip
# Server jar file name 
export SERVER_JAR_FILENAME=mcserver.jar
