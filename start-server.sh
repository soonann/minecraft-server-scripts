#!/bin/sh
tmux new-session -d -s minecraft 'cd /home/tsa_soonann/minecraft-custom/;java -Xmx3G -Xms2G -jar forge-1.12.2-14.23.5.2815-universal.jar nogui'
tmux a -t minecraft
