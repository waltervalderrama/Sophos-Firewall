#!/bin/bash

CAT=$(which cat)
CURL=$(which curl)
SED=$(which sed)
CUT=$(which cut)
PATH=$(pwd)
filename=$1
n=1
while read line; do
# reading each line
IP=$(echo "$line" | $SED -E "/^$|^\s*#/d")
$CURL -k "https://"$3":4444/webconsole/APIController" -d 'reqxml=<Request><Login><Username>'$4'</Username><Password>'$5'</Password></Login><Set><IPHost><Name>'$2$n'</Name><IPFamily>IPv4</IPFamily><HostType>IP</HostType><IPAddress>'$IP'</IPAddress></IPHost></Set></Request>' -v
echo $IP
n=$((n+1))
done < $filename
