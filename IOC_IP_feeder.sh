#!/bin/bash

CAT=$(which cat)
CURL=$(which curl)
SED=$(which sed)

echo "Enter the name (full path) of the Feeder File"
read PATH_FILE
#clear
#echo $PATH_FILE
echo "Enter the name of the Reference Source (without spaces)"
read REFERENCE_NAME
#clear
#echo $REFERENCE_NAME
$CAT "$PATH_FILE" | sed '/^#/d' | sed -n  'H;${x;s/\n/,/g;s/^,//;p;}' > $REFERENCE_NAME"_READY"
#$CAT "$PATH_FILE" | sed '/^#/d' | sed -n  'H;${x;s/\n/,/g;s/^,//;p;}'
