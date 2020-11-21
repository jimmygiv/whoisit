#!/usr/bin/env bash
#Add ACII flare :)
apiKey='dd1c9c97359c4c30aa3294d839f87320'
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
fi
if [[ ! $apiKey ]]; then
  echo " [*]Need API Key to run query"
  exit
fi

#--------------------------------------------------------------------------------------------------------------------#
#Web requests#
baseUrl="https://api.ipgeolocation.io/ipgeo?"
IP=$1
FIELDS="city,state_prov,country_name,latitude,longitude"
GEOIP="$baseUrl";GEOIP+="apiKey=$apiKey&ip=$IP&fields=$FIELDS&format=json"
query=$(curl -s $GEOIP)
ht_request=$(curl -s "https://api.hackertarget.com/bannerlookup/?q=$IP")
whoisit=$(whois $IP | grep "OrgName\|NetRange\|CIDR\|NetName\|City\|StateProv\|Country\|OrgTechName\|OrgTechHandle\|inet\|descr")
#--------------------------------------------------------------------------------------------------------------------#

if [[ $(echo "$ht_request" | jq -s '.[1]') != "null" ]]; then
  ht=$(echo "$ht_request" | jq -s '.[0]')
else
  ht=$ht_request
fi


#--------------------------------------------------------------------------------------------------------------------#
#Printing Information

echo $query | jq '.'
echo PTR: $(host $IP)
printf '\n'
echo "Services:"
echo $ht | jq '.'
echo "$whoisit"
