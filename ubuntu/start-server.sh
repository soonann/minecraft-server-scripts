#!/bin/bash
screen -S minecraft -X 'source /home/ubuntu/game/scripts/config.sh;cd $SERVER_PATH;echo "You are now in a screen session, press Ctrl-A then D to exit and use to command screen -r  minecraft, to come back to this terminal";sudo java -Xmx3G -Xms2G -jar $SERVER_JAR_FILENAME nogui'

