sudo yum update -y
sudo yum install epel-release -y 
sudo yum install java tmux htop zip unzip -y
# For Hexxit 
# wget http://servers.technicpack.net/Technic/servers/hexxit/Hexxit_Server_v1.0.10.zip

# For rclone
curl https://rclone.org/install.sh | sudo bash

echo ''
echo ''
echo 'Configure your rclone with the following before using backup-server.sh script:'
echo 'https://rclone.org/onedrive/' 
echo 'https://rclone.org/remote_setup/'
