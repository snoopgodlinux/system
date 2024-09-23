#!/usr/bin/env bash
#
# [Release]: SnoopGod 24.04.2 LTS amd64
# [Website]: https://snoopgod.com/releases/?ver=24.04.2
# [License]: http://www.gnu.org/licenses/gpl-3.0.html

## ---------------- ##
## DEFINE VARIABLES ##
## ---------------- ##

## Colour Output
## -------------
texterror="\033[01;31m"     # Text Error
textvalid="\033[01;32m"     # Text Success
textalert="\033[01;33m"     # Text Warnings/Information
textlabel="\033[01;34m"     # Text Heading
textreset="\033[00m"        # Text Reset

## ---------------- ##
## DEFINE FUNCTIONS ##
## ---------------- ##

## Load Status
## -----------
function loadstatus()
{
    texterror=$(tput setaf 1)
    textvalid=$(tput setaf 2)
    textalert=$(tput setaf 3)
    textlabel=$(tput setaf 4)
    textreset=$(tput sgr0)

    message=$1
    display="[$2]"

    if [ "$3" == "issue" ];
    then
        return="$texterror${display}$textreset"
    elif [ "$3" == "valid" ];
    then
        return="$textvalid${display}$textreset"
    elif [ "$3" == "warning" ];
    then
        return="$textalert${display}$textreset"
    elif [ "$3" == "info" ];
    then
        return="$textalert${display}$textreset"
    else
        return="$textreset${display}$textreset"
    fi

    let COL=$(tput cols)-${#message}+${#return}-${#display}

    echo -n $message
    printf "%${COL}s\n"  "$return"
}

## Keep alive
## ----------
function keepalive()
{
	sudo -v
	while true;
	do
		sudo -n true;
		sleep 60s;
		kill -0 "$$" || exit;
	done 2>/dev/null &
}

## Prompt User
## -----------
function promptuser()
{
	read -p "[?] Enter your username? " username
	if ! id -u "$username" >/dev/null 2>&1;
	then
	  	echo -e "[!] This username do not exists"
	  	promptuser
	fi
}

## Update System
## -------------
function updatehook()
{
	## Checking for update
	loadstatus "[+] Checking for update" "ok" "valid"

	## Check current release
	release=$(lsb_release -d | grep -Po "SnoopGod ([0-9]{2}.[0-9]{2}.[0-9]{1}) LTS")
	if [ -z "$release" ];
	then
	  	wget -q -O "/tmp/os-release" "https://raw.githubusercontent.com/snoopgodlinux/system/refs/heads/main/usr/lib/os-release"
	  	if [ -f "/tmp/os-release" ];
	  	then
	  		# Copy `os-release` configuration
	  		sudo rm -f /etc/os-release
	  		sudo rm -f /usr/lib/os-release
	  		sudo cp /tmp/os-release /etc/
	  		sudo cp /tmp/os-release /usr/lib/
	  		loadstatus "[+] OS-Release updated" "ok" "valid"
	  	fi
	else
		loadstatus "[+] OS-Release found" "ok" "valid"
	fi
	
	## Proceed update
	if [ "$release" = "SnoopGod 22.04.3 LTS" ];
	then
		## Update system
		loadstatus "[+] Update system" "ok" "valid"

		## Terminate
		loadstatus "[+] Update done successfully" "ok" "valid"
	fi

	## Proceed update
	if [ "$release" = "SnoopGod 22.04.4 LTS" ];
	then
		## Update system
		loadstatus "[+] Update system" "ok" "valid"

		## Terminate
		loadstatus "[+] Update done successfully" "ok" "valid"
	fi

	## Proceed update
	if [ "$release" = "SnoopGod 24.04.1 LTS" ];
	then
		## Update system
		loadstatus "[+] Update system" "ok" "valid"

		## Terminate
		loadstatus "[+] Update done successfully" "ok" "valid"
	fi

	## Proceed update
	if [ "$release" = "SnoopGod 24.04.2 LTS" ];
	then
		## Update system
		loadstatus "[+] Update system" "ok" "valid"

		## Terminate
		loadstatus "[+] Update done successfully" "ok" "valid"
	fi
}

## -------------- ##
## EXECUTE SCRIPT ##
## -------------- ##

## Launch
## ------
function launch()
{
	# Execute Actions
	keepalive
	promptuser
	updatehook
}

## -------- ##
## CALLBACK ##
## -------- ##

launch
