fol() {
cd ~/Mirror-Bot-Rootedcyber
}
sch() {
fol
if [ -e "mbot" ];then
echo
else
bash setup.sh
fi
}
check() {
cd ~
if [ -e "Mirror-Bot-Rootedcyber" ];then
sch
else
printf "\n Clone this repo in home directory\n"
fi
}
bann() {
echo
echo
toilet -f font -F metal       \ \ \ \ \  BOT \ \ 
printf "\n\033[1;92m \t This tool created by\033[0m https://github.com/rooted-cyber/\n"
printf "\033[1;92m \t Copyright from \033[0m https://github.com/harshpreets63\n\n"
}
arh() {
random
echo -e -n "All field right ? (y|n) "
read ar
if [ "$ar" == "y" ] || [ "$ar" == "Y" ];then
random
printf "\n Saving your \033[0m config.env "
fi
if [ "$ar" == "n" ] || [ "$a" == "N" ];then
random
printf "\n Refill config.env\n"
sleep 5
fco
fi
}
fco() {
clear
random
printf "\n\n All required field\n"
printf "
\033[1;92m 
BOT_TOKEN
GDRIVE_FOLDER_ID
OWNER_ID\n\n"
echo -e -n "\033[1;93m BOT_TOKEN \033[0m"
read a
if [ $a ];then
echo
echo -e -n "\033[1;93m GDRIVE_FOLDER_ID \033[0m"
read b
fi
if [ $b ];then
echo
echo -e -n "\033[1;93m OWNER_ID \033[0m"
read e
fi
if [ $e ];then
arh
fol
cd mbot
rm -f config_sample.env
cat >> config.env << EOF
BOT_TOKEN = "$a"
GDRIVE_FOLDER_ID = "$b"
OWNER_ID = "$c"
DOWNLOAD_DIR = "/home/username/mirror-bot/downloads"
DOWNLOAD_STATUS_UPDATE_INTERVAL = 5
AUTO_DELETE_MESSAGE_DURATION = 20
IS_TEAM_DRIVE = "false"
TELEGRAM_API = "3704772"
TELEGRAM_HASH = "b8e50a035abb851c0dd424e14cac4c06"
USE_SERVICE_ACCOUNTS = ""

# Optional config
ACCOUNTS_ZIP_URL = "" #Enter Direct Links TO Import Service Accounts Directly From Urls Instead Of Adding Files To Repo.( Archive the accounts folder to a zip file.)
TOKEN_PICKLE_URL = "" #Enter Direct Links TO Import Credentials Directly From Urls Instead Of Adding Files To Repo.
AUTHORIZED_CHATS = "" #Separated by space
SUDO_USERS = ""  #Separated by space
LOGS_CHATS = "" #Separated by space
DATABASE_URL = ""
IGNORE_PENDING_REQUESTS = ""
INDEX_URL = ""
MEGA_KEY = ""
MEGA_USERNAME = ""
MEGA_PASSWORD = ""
BLOCK_MEGA_LINKS = ""
SHORTENER = ""
SHORTENER_API = ""
STOP_DUPLICATE_CLONE = ""
CLONE_LIMIT = ""
TG_SPLIT_SIZE = "" # leave it empty for max size(2GB)
AS_DOCUMENT = ""
RECURSIVE_SEARCH = "" #T/F And Fill drive_folder File Using Driveid.py Script.
# View Link button to open file Index Link in browser instead of direct download link
# You can figure out if it's compatible with your Index code or not, open any video from you Index and check if its URL ends with ?a=view, if yes make it True it will work (Compatible with Bhadoo Drive Index)
VIEW_LINK = ""
# Add more buttons (two buttons are already added of file link and index link, you can add extra buttons too, these are optional)
#QBittorrent
BASE_URL_OF_BOT = ""  # Web Link, Required for (Heroku) to avoid sleep or use worker if you don't want to use web (selection)
IS_VPS = ""  # Don't set this to True even if you're using VPS, unless facing error with web server
SERVER_PORT = "80"  # Only For VPS even if IS_VPS is False
WEB_PINCODE = ""
QB_SEED = "" # Seed torrent to specific ratio or specific time, edit vars in qbittorrent config and don't change maxratioaction
# GDTOT COOKIES
PHPSESSID = "osj632m5slu25l4vbtdidprou3"
CRYPT = "L1pnRmxHclF4S2JzMkhHTmV0YXFQNDdtdXM5UlVueDFOT1NxYzVmUzhvUT0%3D"
# If you don't know what are below entries, simply leave them, Don't fill anything in them.
BUTTON_THREE_NAME = "Mirror-Bot Repo"
BUTTON_THREE_URL = "https://github.com/rooted-cyber/fol"
BUTTON_FOUR_NAME = "Group Link"
BUTTON_FOUR_URL = "https://t.me/HarshMirrorRepo"
BUTTON_FIVE_NAME = ""
BUTTON_FIVE_URL = ""

EOF
fi
}
bro() {
heroku login
}
ter() {
heroku login -i
}
hlo() {
printf "\n\033[1;91m[\033[0m1\033[1;91m]\033[1;93m Login in browser"
printf "\n\033[1;91m[\033[0m2\033[1;91m]\033[1;93m Login in Termux"
echo
echo -e -n "\033[1;95m Select\033[0m -->> "
read he
case $he in
1)bro ;;
2)ter ;;
*)hlo ;;
esac
}
cch() {
cd /sdcard
if [ -e "config.sh" ];then
cp -f config.sh ~/Mirror*Rooted*/mbot/config.env
fi
}
ctp() {
if [ -e "token.pickle" ];then
git pull > /dev/null 2>&1
cch
bash heroku_push.sh
else
random
printf "\n Not found token.pickle \n"
exit
fi
}
imb () {
fol
cd mbot
if [ -e "config.env" ];then
ctp
else
cch
ctp
fi
}
ecf() {
fol
cd mbot
if [ -e "config_sample.env" ];then
cp -f config_sample.env /sdcard/config.sh
xdg-open /sdcard/config.sh
rm -f config_sample.env
fi
if [ -e "config.env" ];then
cp -f config.env /sdcard/config.sh
xdg-open /sdcard/config.sh
fi
}
ctp() {
random
printf "\n Copy your token.pickle in this directory\033[1;91m (\033[0m \sdcard/Rootedcyber-file\033[1;91m)"
read
cd /sdcard/Rootedcyber-file
if [ -e "token.pickle" ];then
random
printf "\n Coping....\n"
sleep 1
cp -f token.pickle ~/Mirror*Rooted*/mbot
random
printf "\n Copied successfully\n"
else
random
printf "\n Not found any token.pickle\n\n"
fi
}

cvid() {
random
printf "\n BOT_TOKEN :

Youtube link :\033[0m https://youtu.be/TFWgeijMVbs

"
random
echo -e "Download Link :\033[0m https://sourceforge.net/projects/rootedcyber-phone/files/Record%20video/Bot_Token.mp4/download"

random
printf "GFOLDER_ID :

Youtube link :\033[0m"


random
echo -e "Download link :\033[0m https://sourceforge.net/projects/rootedcyber-phone/files/Record%20video/GDRIVE%20FOLDER%20ID.mp4/download"

random
printf "token.pickle :

Youtube link :\033[0m https://youtu.be/OpRXrYEf-fU
"
random
echo -e "Download link :\033[0m https://sourceforge.net/projects/rootedcyber-phone/files/Record%20video/token.pickle.mp4/download"

}
menu() {
bann
printf "\n\033[1;91m[\033[0m1\033[1;91m]\033[1;93m Login Heroku"
printf "\n\033[1;91m[\033[0m2\033[1;91m]\033[1;93m Install Mirror-Bot"
printf "\n\033[1;91m[\033[0m3\033[1;91m]\033[1;93m Update bot"
printf "\n\033[1;91m[\033[0m4\033[1;91m]\033[1;93m Fill config.env"
printf "\n\033[1;91m[\033[0m5\033[1;91m]\033[1;93m Edit config.env in file manager"
printf "\n\033[1;91m[\033[0m6\033[1;91m]\033[1;93m Copy toke.pickle"
printf "\n\033[1;91m[\033[0m7\033[1;91m]\033[1;93m Config.env setup video"
printf "\n\033[1;91m[\033[0m8\033[1;91m]\033[1;93m Exit\n\n"
echo -e -n "\033[1;96m Bot\033[0m -->> "
read bo
case $bo in
1)hlo ;;
2)imb ;;
3)imb ;;
4)fco ;;
5)ecf ;;
6)ctp ;;
7)cvid ;;
8)exit ;;
*)menu ;;
esac
}
menu