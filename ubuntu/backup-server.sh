#!/bin/bash

# This script assumes you've setup a remote path with the rclone tool on OneDrive
# It also assumes that you've started a screen session to run your server

source /home/ubuntu/games/scripts/config.sh
savingMessages=(
"Saving  ..."
"Saving  ... "
"Saving  ..."
"Saving  ..."
"Saving  ..."
"Saving  ..."
"Saving  ..."
"Saving  ..."
)
R=$(shuf -i 1-${#savingMessages[@]} -n 1)

screen -r $TERM_NAME -X stuff "/save-all\n/save-off\n/say ${savingMessages[$(shuf -i 0-$(expr ${#savingMessages[@]} - 1) -n 1)]}\n"
cd $SERVER_PATH
zip -r $TMP_ZIP_PATH $SERVER_FOLDER
rclone copy $TMP_ZIP_PATH $REMOTE_BACKUP_PATH
rm $TMP_ZIP_PATH
screen -r $TERM_NAME -X stuff '/save-on\n'
~
