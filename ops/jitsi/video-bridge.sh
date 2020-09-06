# make sure you are root!

apt update
apt upgrade -y

echo 'deb https://download.jitsi.org stable/' >> /etc/apt/sources.list.d/jitsi-stable.list
apt-get install apt-transport-https -y
apt-get install gnupg -y

wget -qO -  https://download.jitsi.org/jitsi-key.gpg.key | sudo apt-key add -
apt update

apt-get -y install jitsi-videobridge2
