#!/usr/bin/env bash
#
# [Release]: SnoopGod 24.04.1 LTS amd64
# [Website]: https://snoopgod.com/releases/?ver=24.04.1
# [License]: http://www.gnu.org/licenses/gpl-3.0.html

## -------------- ##
## DEFINE ACTIONS ##
## -------------- ##

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

## Upgrade System
## ---------------
function upgradehook()
{
	## Checking for upgrade
	echo -e "[+] Checking for upgrade"

	## Check current release
	release=$(lsb_release -d | grep -Po "SnoopGod ([0-9]{2}.[0-9]{2}.[0-9]{1}) LTS")

	## Proceed upgrade
	if [ "$release" = "SnoopGod 22.04.3 LTS" ];
	then
		## Upgrade system
		echo -e "[+] Upgrade system"

		## Terminate
		echo -e "[+] Upgrade done successfully"
	fi

	## Proceed upgrade
	if [ "$release" = "SnoopGod 22.04.4 LTS" ];
	then
		## Upgrade system
		echo -e "[+] Upgrade system"

		## Terminate
		echo -e "[+] Upgrade done successfully"
	fi

	## Proceed upgrade
	if [ "$release" = "SnoopGod 24.04.1 LTS" ];
	then
		## Upgrade system
		echo -e "[+] Upgrade system"

		## Terminate
		echo -e "[+] Upgrade done successfully"
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
	upgradehook
}

## -------- ##
## CALLBACK ##
## -------- ##

launch
