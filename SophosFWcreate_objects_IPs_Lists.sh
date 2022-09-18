#!/bin/bash

CAT=/usr/bin/cat
CUT=/usr/bin/cut
SED=/usr/bin/sed
CURL=/usr/bin/curl
PATH=$(pwd)
filename=$1
#n=1
#while read line; do
# reading each line
#IP=$(echo "$line" | $SED -E "/^$|^\s*#/d")
#$CAT $1
cat $1
#IP_List=$($CAT $1)
#$CURL -k "https://"$3":4444/webconsole/APIController" -d 'reqxml=<Request><Login><Username>'$4'</Username><Password>'$5'</Password></Login><Set><IPHost><Name>'$2$n'</Name><IPFamily>IPv4</IPFamily><HostType>IPList</HostType><ListOfIPAddresses>'$IP_List'</ListOfIPAddresses></IPHost></Set></Request>' -v
echo $IP_List
#n=$((n+1))
#done < $filename
