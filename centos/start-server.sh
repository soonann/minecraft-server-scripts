#!/bin/bash
tmux new-session -d -s minecraft 'source /home/tsa_soonann/minecraft-custom/scripts/config.sh;cd $SERVER_PATH;echo "You are now in a tmux pane, press Ctrl-B then D to exit and use to command tmux a -t minecraft to come back to this terminal";java -Xmx3G -Xms2G -jar $SERVER_JAR_FILENAME  nogui'
tmux a -t minecraft
