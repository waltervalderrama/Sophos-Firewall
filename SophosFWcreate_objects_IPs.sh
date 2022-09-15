#!/bin/bash

# Author: Walter Valderrama
# https://github.com/waltervalderrama
# Usage: 
# After configurying an API connection on your Firewall (see the following link) https://docs.sophos.com/nsg/sophos-firewall/18.5/Help/en-us/webhelp/onlinehelp/AdministratorHelp/BackupAndFirmware/API/APIUsingAPI/index.html and having downloaded (for example from https://github.com/firehol/blocklist-ipsets.git) or built by yourself an IP list, it is possible to create massively many single IP objects on Sophos Firewall.

# Syntax
# ./SophosFWcreate_objects_IPs.sh $file_name $object_name_to_create $password

# Where
# $file_name = the name of the file where IP addresses you want to add are
# $object_name_to_create = the name of the object you want to create on your Sophos Firewall
# $password = the unencrypted password of the API admin user you must create 

CAT=/usr/bin/cat
CUT=/usr/bin/cut
SED=/usr/bin/sed
CURL=/usr/bin/curl
PATH=$(pwd)
filename=$1
#filename='/home/walter/bad_ips_feeds/blocklist-ipsets/firehol_level'$1'.netset'
#filename='/home/walter/bad_ips_feeds/blocklist-ipsets/test'$1'.netset'
n=1
while read line; do
# reading each line
IP=$(echo "$line" | $SED -E "/^$|^\s*#/d")
$CURL -k "https://firewall.valderrama.local:4444/webconsole/APIController" -d 'reqxml=<Request><Login><Username>API_adm</Username><Password>'$3'</Password></Login><Set><IPHost><Name>'$2$n'</Name><IPFamily>IPv4</IPFamily><HostType>IP</HostType><IPAddress>'$IP'</IPAddress></IPHost></Set></Request>' -v
echo $IP
n=$((n+1))
done < $filename
