chf() {
	cd $PREFIX/share/figlet
	if [ -e "font.flf" ];then
	echo
	fi
	}
	chr() {
		cd $PREFIX/bin
		if [ -e "random" ];then
		echo
		fi
		}
		se() {
printf "\n Updating packages\n"
apt update
apt upgrade
apt install --fix-broken
for a in nodejs wget toilet figlet python;do
cd $PREFIX/bin
if [ -e "$a" ];then
printf "\n Already installed $a\n"
else
echo "Installing $a"
apt install $a || apt reinstall $a
apt install --fix-broken
fi
done
printf "\nUpdating nodejs\n"
npm install -g npm@8.3.0
cd $PREFIX/bin
if [ -e "heroku" ];then
printf "\n Already installed heroku\n"
else
printf "\nInstalling heroku\n"
npm install -g heroku
fi
cd ~/Mirror-Bot-Rootedcyber
if [ -e "files" ];then
cd files
chr
wget https://github.com/rooted-cyber/compresses-app/raw/main/files/Random.deb
chf
wget https://github.com/rooted-cyber/compresses-app/raw/main/files/Font.deb
chr
dpkg -i Random.deb
chf
dpkg -i Font.deb
else
mkdir files
cd files
chr
wget -q https://github.com/rooted-cyber/compresses-app/raw/main/files/Random.deb
chf
wget -q https://github.com/rooted-cyber/compresses-app/raw/main/files/Font.deb
chr
dpkg -i Random.deb
chf
dpkg -i Font.deb
fi
random
printf "\n Unzip \n"
cd ~/Mirror-Bot-Rootedcyber
if [ -e "mbot" ];then
echo "Already unzip"
else
unzip mbot.zip -d mbot
fi
}
se
