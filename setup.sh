se() {
printf "\n Updating packages\n"
apt update
apt upgrade
apt install --fix-broken
for a in nodejs wget toilet figlet python;do
echo "Installing $a"
apt install $a || apt reinstall $a
apt install --fix-broken
done
prinrf "\nUpdating nodejs\n"
npm install -g npm@8.3.0
printf "\nInstalling heroku\n"
npm install -g heroku
mkdir files
cd files
wget https://github.com/rooted-cyber/compresses-app/raw/main/files/Random.deb
wget https://github.com/rooted-cyber/compresses-app/raw/main/files/Font.deb
dpkg -i Random.deb
dpkg -i Font.deb
random
printf "\n Unzip \n"
cd ~/Mirror-Bot-Rootedcyber
unzip mbot.zip -d mbot
}
se
