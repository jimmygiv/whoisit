UPDATE: Added grabbing PTR record for the IP, and checking for API key to ipgeolocation

Basic script to pull geoip data from ipgeolocation.io. It uses the API, so you will need an API key to use this. The API is free, you just need an account. Edit variable apiKey to have your key value.

Sample Command: whoisit 8.8.8.8

Sample Output:
  _       ____          ____     ______
 | |     / / /_  ____  /  _/____/  _/ /  
 | | /| / / __ \/ __ \ / // ___// // __/ 
 | |/ |/ / / / / /_/ // /(__  )/ // /_   
 |__/|__/_/ /_/\____/___/____/___/\__/   

 {
  "ip": "8.8.8.8",
  "city": "Mountain View",
  "state_prov": "California",
  "country_name": "United States",
  "latitude": "37.42240",
  "longitude": "-122.08421"
}
PTR: 8.8.8.8.in-addr.arpa domain name pointer dns.google.

Services:
{
  "ip": "8.8.8.8",
  "https443": {
    "title": "301 Moved",
    "server": "sffe",
    "cn": "dns.google",
    "o": "Google LLC"
  }
}
NetRange:       8.0.0.0 - 8.127.255.255
CIDR:           8.0.0.0/9
NetName:        LVLT-ORG-8-8
OrgName:        Level 3 Parent, LLC
City:           Monroe
StateProv:      LA
Country:        US
OrgTechHandle: IPADD5-ARIN
OrgTechName:   ipaddressing
NetRange:       8.8.8.0 - 8.8.8.255
CIDR:           8.8.8.0/24
NetName:        LVLT-GOGL-8-8-8
OrgName:        Google LLC
City:           Mountain View
StateProv:      CA
Country:        US
OrgTechHandle: ZG39-ARIN
OrgTechName:   Google LLC
