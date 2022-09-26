Scripts to interact with Sophos Firewall (former Sophos XG Firwall) via APIs

### Author: Walter Valderrama ###
### https://github.com/waltervalderrama ###

## Usage:
After configuring an API connection on your Firewall using the following link
https://docs.sophos.com/nsg/sophos-firewall/18.5/Help/en-us/webhelp/onlinehelp/AdministratorHelp/BackupAndFirmware/API/APIUsingAPI/index.html
and having downloaded (for example from https://github.com/firehol/blocklist-ipsets.git) or built by yourself an IP list, it is possible to massively
create many single IP objects, or one single IP List object on Sophos Firewall.

## Feeder:
If you are going to create an IP List object, use the `IOC_IP_feeder.sh` to prepare a comma separeted file. This step is crucial if you have a file where all the IP addresses exist one per line.

## Syntax
### To create many single IP objects:
`./SophosFWcreate_objects_IPs.sh Option1 Option2 Option3 Option4 Option5`
**Where**
* **Option1 =** The name of the file where IP addresses you want to add are (full path)
* **Option2 =** The name of the object you want to create on your Sophos Firewall
* **Option3 =** FQDN or IP address of the firewall
* **Option4 =** API admin user
* **Option5 =** the unencrypted password of the API admin user you must create

### To create one IP List object (many IP addresses):
`./SophosFWcreate_objects_IPs_Lists.sh Option1 Option2 Option3 Option4 Option5`
**Where**
* **Option1 =** The name of the file where IP addresses you want to add are (full path). The IP addresses must be separeted by commas.
* **Option2 =** The name of the object List you want to create on your Sophos Firewall
* **Option3 =** FQDN or IP address of the firewall
* **Option4 =** API admin user
* **Option5 =** the unencrypted password of the API admin user you must create

To work with these scripts, it is assumed that you created a user *API_adm* to connect to the Firewall
