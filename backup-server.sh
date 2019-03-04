tmux send-keys -t minecraft save-all ENTER
tmux send-keys -t minecraft save-off ENTER
SERVER_PATH=/home/tsa_soonann/minecraft-custom/
SERVER_FOLDER=world
DT=$(date "+%Y%m%d-%H%M%S")
cd $SERVER_PATH
zip -r /tmp/minecraft-custom-$DT.zip $SERVER_FOLDER
rclone copy /tmp/minecraft-custom-$DT.zip onedrive:minecraft-server/minecraft-custom/backups/
rm /tmp/minecraft-custom-$DT.zip
tmux send-keys -t minecraft save-on ENTER
