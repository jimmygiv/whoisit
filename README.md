This script pulls geoip data from ipwhois.app, service data from hackertarget, and metadata from whois. It's a quick a dirty way to gather passive information on a target without requiring any api keys.<br />
EXAMPLE: whoisit 8.8.8.8<br />
 _       ____          ____     ______<br />
 | |     / / /_  ____  /  _/____/  _/ /  <br />
 | | /| / / __ \/ __ \ / // ___// // __/ <br />
 | |/ |/ / / / / /_/ // /(__  )/ // /_   <br />
 |__/|__/_/ /_/\____/___/____/___/\__/   <br />
<br />
<br />
PTR: 8.8.8.8.in-addr.arpa domain name pointer dns.google.<br />
<br />
{<br />
  "ip": "8.8.8.8",<br />
  "country": "United States",<br />
  "region": "Virginia",<br />
  "city": "Ashburn",<br />
  "latitude": "39.0437567",<br />
  "longitude": "-77.4874416"<br />
}<br />
{<br />
  "ip": "8.8.8.8",<br />
  "https443": {<br />
    "title": "301 Moved",<br />
    "server": "sffe",<br />
    "cn": "dns.google",<br />
    "o": "Google LLC"<br />
  }<br />
}<br />
NetRange:       8.0.0.0 - 8.127.255.255<br />
CIDR:           8.0.0.0/9<br />
NetName:        LVLT-ORG-8-8<br />
OrgName:        Level 3 Parent, LLC<br />
City:           Monroe<br />
StateProv:      LA<br />
<br />
Country:        US<br />
OrgTechHandle: IPADD5-ARIN<br />
OrgTechName:   ipaddressing<br />
NetRange:       8.8.8.0 - 8.8.8.255<br />
CIDR:           8.8.8.0/24<br />
NetName:        LVLT-GOGL-8-8-8<br />
OrgName:        Google LLC<br />
City:           Mountain View<br />
StateProv:      CA<br />
Country:        US<br />
OrgTechHandle: ZG39-ARIN<br />
OrgTechName:   Google LLC<br />