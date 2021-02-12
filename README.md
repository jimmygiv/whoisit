This script pulls geoip data from ipwhois.app, service data from hackertarget, and metadata from whois. It's a quick a dirty way to gather passive information on a target without requiring any api keys.
EXAMPLE: whoisit 8.8.8.8
 _       ____          ____     ______
 | |     / / /_  ____  /  _/____/  _/ /  
 | | /| / / __ \/ __ \ / // ___// // __/ 
 | |/ |/ / / / / /_/ // /(__  )/ // /_   
 |__/|__/_/ /_/\____/___/____/___/\__/   


PTR: 8.8.8.8.in-addr.arpa domain name pointer dns.google.

{
  "ip": "8.8.8.8",
  "country": "United States",
  "region": "Virginia",
  "city": "Ashburn",
  "latitude": "39.0437567",
  "longitude": "-77.4874416"
}
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
