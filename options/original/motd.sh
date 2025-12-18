# Script Variables
printf -v pad %40s                                      # create var ($pad) which contains 40 spaces
version=$(sw_vers -productVersion)
version=$version$pad                                    # add $pad to $version (i.e. creating a string with 40 trailing spaces)
version=${version:0:19}                                 # limit $version string to 19 characters
time=$(date +"%X")
date=$(date +"%x")
uptime=$( uptime | sed -E 's/^[^,]*up *//; s/, *[[:digit:]]* user.*//; s/min/min/; s/([[:digit:]]+):0?([[:digit:]]+)/\1 hrs, \2 mins/' )
uptime=$uptime$pad                                      # add $pad to $uptime (i.e. creating a string with 40 trailing spaces)
uptime=${uptime:0:19}                                   # limit $uptime string to 19 characters
extip=$( curl -s https://checkip.amazonaws.com )
extip=$extip$pad                                    # add $pad to $extip (i.e. creating a string with 40 trailing spaces)
extip=${extip:0:19}                                 # limit $extip string to 19 characters

# Create Details Output
DETAILS="/******************************************/"
DETAILS="$DETAILS\n/*         System ---- MacOS              */"
DETAILS="$DETAILS\n/*        Version ---- $version*/"
DETAILS="$DETAILS\n/*           Time ---- $time           */"
DETAILS="$DETAILS\n/*           Date ---- $date         */"
DETAILS="$DETAILS\n/*         Uptime ---- $uptime*/"
DETAILS="$DETAILS\n/*      Public IP ---- $extip*/"
DETAILS="$DETAILS\n/******************************************/"
DETAILS="$DETAILS\n "

# Execute MOTD
artii "WARP SPEED" -f slant | lolcat --spread=1000
echo " "
echo "$DETAILS" | lolcat --spread=1000