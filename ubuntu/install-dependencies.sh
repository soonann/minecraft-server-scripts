sudo apt update -y 
sudo apt install java screen htop zip unzip -y

# Rclone install
curl https://rclone.org/install.sh | sudo bash

echo ''
echo ''
echo 'Set your server variables in the config.sh script'
echo ''
echo ''
echo 'Configure your rclone with the following before using backup-server.sh script:'
echo 'https://rclone.org/onedrive/' 
echo 'https://rclone.org/remote_setup/'

# For Hexxit 
# wget http://servers.technicpack.net/Technic/servers/hexxit/Hexxit_Server_v1.0.10.zip
