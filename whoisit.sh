#!/usr/bin/env bash
#Add ACII flare :)
banner=''
banner+=' _       ____          ____     ______\n'
banner+=' | |     / / /_  ____  /  _/____/  _/ /  \n'
banner+=' | | /| / / __ \/ __ \ / // ___// // __/ \n'
banner+=' | |/ |/ / / / / /_/ // /(__  )/ // /_   \n'
banner+=' |__/|__/_/ /_/\____/___/____/___/\__/   \n'
banner+="\n"
#--------------------------------------------------------------------------------------------------------------------#
#Constants#
GREEN='\033[0;32m'
NC='\033[0m'
printf "${GREEN} ${banner} ${NC}"

#--------------------------------------------------------------------------------------------------------------------#
#Check needed tools
tools=(jq curl whois)
for i in ${tools[@]}; do
  if [[ ! $(which $i) ]]; then
    apt-get install $i -y
  fi
done
if [[ ! $1 ]]; then
  echo "[*] Need ip to check"
  exit
elif [[ ! $(echo $1 | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b") ]]; then
  echo "[*] $1 is not a valid ip"
  exit
fi
#--------------------------------------------------------------------------------------------------------------------#
#Web requests#
geo=$(curl -s "https://ipwhois.app/json/$1?objects=ip,latitude,longitude,city,region,country")
ht_request=$(curl -s "https://api.hackertarget.com/bannerlookup/?q=$1")
whois=$(whois $1 | grep "OrgName\|NetRange\|CIDR\|NetName\|City\|StateProv\|Country\|OrgTechName\|OrgTechHandle\|inet\|descr")
#--------------------------------------------------------------------------------------------------------------------#
#Working around weird api stuff for ht
if [[ $(echo "$ht_request" | jq -s '.[1]') != "null" ]]; then
  ht=$(echo "$ht_request" | jq -s '.[0]')
else
  ht=$ht_request
fi
#--------------------------------------------------------------------------------------------------------------------#
#Printing Information
echo $'\n'"PTR: $(host $1)"$'\n'
echo "$geo $ht" | jq '.'
echo "$whois"
