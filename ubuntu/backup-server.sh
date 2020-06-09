#!/bin/bash

# This script assumes you've setup a remote path with the rclone tool on OneDrive
# It also assumes that you've started a screen session to run your server

source /home/ubuntu/games/scripts/config.sh

screen -r $TERM_NAME -X stuff "/save-all\n/save-off\n/say Saving Enwei's milo powder\n"
cd $SERVER_PATH
zip -r $TMP_ZIP_PATH $SERVER_FOLDER 
rclone copy $TMP_ZIP_PATH $REMOTE_BACKUP_PATH
rm $TMP_ZIP_PATH
screen -r $TERM_NAME -X stuff '/save-on\n'
