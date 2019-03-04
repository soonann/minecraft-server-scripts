#!/bin/bash

# This script assumes you've setup a remote path with the rclone tool on OneDrive
# It also assumes that you've started a tmux terminal to run your server

source /home/tsa_soonann/minecraft-custom/scripts/config.sh

tmux send-keys -t $TMUX_TERM_NAME save-all ENTER
sleep 5
tmux send-keys -t $TMUX_TERM_NAME save-off ENTER
cd $SERVER_PATH
zip -r $TMP_ZIP_PATH $SERVER_FOLDER 
rclone copy $TMP_ZIP_PATH $REMOTE_BACKUP_PATH
rm $TMP_ZIP_PATH
tmux send-keys -t $TMUX_TERM_NAME save-on ENTER
