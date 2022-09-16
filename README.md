# Sophos-Firewall #
Scripts to interact with Sophos Firewall (former Sophos XG Firwall) via APIs

### Author: Walter Valderrama ###
### https://github.com/waltervalderrama ###

## Usage:
After configurying an API connection on your Firewall using the following link 
https://docs.sophos.com/nsg/sophos-firewall/18.5/Help/en-us/webhelp/onlinehelp/AdministratorHelp/BackupAndFirmware/API/APIUsingAPI/index.html 
and having downloaded (for example from https://github.com/firehol/blocklist-ipsets.git) or built by yourself an IP list, it is possible to create
massively many single IP objects on Sophos Firewall.

## Syntax
**./update_IPs_and_objects.sh $file_name $object_name_to_create $password**

## Where
$file_name = the name of the file where IP addresses you want to add are
$object_name_to_create = the name of the object you want to create on your Sophos Firewall
$password = the unencrypted password of the API admin user you must create
In this script, it is assumed that you created a user *API_adm* to connect to the Firewall
