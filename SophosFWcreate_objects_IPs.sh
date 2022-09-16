#!/bin/bash

CAT=/usr/bin/cat
CUT=/usr/bin/cut
SED=/usr/bin/sed
CURL=/usr/bin/curl
PATH=$(pwd)
filename=$2
n=1
while read line; do
# reading each line
IP=$(echo "$line" | $SED -E "/^$|^\s*#/d")
#$CURL -k "https://firewall.valderrama.local:4444/webconsole/APIController" -d 'reqxml=<Request><Login><Username>API_adm</Username><Password>'$3'</Password></Login><Set><IPHost><Name>'$2$n'</Name><IPFamily>IPv4</IPFamily><HostType>IP</HostType><IPAddress>'$IP'</IPAddress></IPHost></Set></Request>' -v
$CURL -k "https://"$1":4444/webconsole/APIController" -d 'reqxml=<Request><Login><Username>'$3'</Username><Password>'$4'</Password></Login><Set><IPHost><Name>'$2$n'</Name><IPFamily>IPv4</IPFamily><HostType>IP</HostType><IPAddress>'$IP'</IPAddress></IPHost></Set></Request>' -v
echo $IP
n=$((n+1))
done < $filename
