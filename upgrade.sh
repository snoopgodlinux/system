#!/usr/bin/env bash
#
# [Release]: SnoopGod 22.04.4 LTS amd64
# [Website]: https://snoopgod.com/releases/?ver=22.04.4
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
	if ! id -u "$username" >/dev/null 2>&1; then
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

		## Retrieve system repository
		echo -e "[+] Downloading upgrade"
		wget -q -O "/tmp/system-main.zip" "https://codeload.github.com/snoopgodlinux/system/zip/refs/heads/main"
		unzip -qq /tmp/system-main.zip -d /tmp/snoopgod/
		mv /tmp/snoopgod/system-main/ /tmp/snoopgod/system/

		if [ -f "/home/$username/.config/kdedefaults/kcm-about-distrorc" ];
		then
			## Copy config directory
			echo -e "[+] Upgrading general configuration"
			rm -f /home/$username/.config/kdedefaults/kcm-about-distrorc
			cp /tmp/snoopgod/system/etc/skel/.config/kdedefaults/kcm-about-distrorc /home/$username/.config/kdedefaults/
		fi

		## Configure utilities
		echo -e "[+] Upgrading system utilities"
		sudo rm -f /usr/local/bin/snoopgod
		sudo rm -f /usr/share/snoopgod/usr/bin/updater
		sudo rm -f /usr/share/snoopgod/usr/bin/upgrader
		sudo rm -f /usr/share/snoopgod/usr/bin/ucleaner
		sudo rm -f /usr/share/snoopgod/usr/bin/rcleaner
		sudo cp /tmp/snoopgod/system/usr/local/bin/snoopgod /usr/local/bin/
		sudo chmod +x /usr/local/bin/snoopgod
		sudo cp -r /tmp/snoopgod/system/usr/share/snoopgod /usr/share/
		sudo chmod +x /usr/share/snoopgod/usr/bin/updater
		sudo chmod +x /usr/share/snoopgod/usr/bin/upgrader
		sudo chmod +x /usr/share/snoopgod/usr/bin/ucleaner
		sudo chmod +x /usr/share/snoopgod/usr/bin/rcleaner

		## Change Screenfetch
		echo -e "[+] Upgrading Screenfetch package"
		sudo rm -f /usr/bin/screenfetch
		sudo cp /tmp/snoopgod/system/usr/bin/screenfetch /usr/bin/
		sudo chmod +x /usr/bin/screenfetch

		## Copy `lsb-release` configuration
		echo -e "[+] Upgrading LSB-Release package"
		sudo rm -f /etc/lsb-release
		sudo cp /tmp/snoopgod/system/etc/lsb-release /etc/

		## Copy `os-release` configuration
		echo -e "[+] Upgrading OS-Release package"
		sudo rm -f /etc/os-release
		sudo rm -f /usr/lib/os-release
		sudo cp /tmp/snoopgod/system/etc/os-release /etc/
		sudo cp /tmp/snoopgod/system/usr/lib/os-release /usr/lib/

		## Copy wallpapers
		echo -e "[+] Upgrading System wallpapers"
		sudo rm -rf /usr/share/wallpapers/*
		sudo cp -r /tmp/snoopgod/system/usr/share/wallpapers/* /usr/share/wallpapers/

		## Correct desktop launcher
		echo -e "[+] Correct desktop launcher"
		sudo rm -rf /usr/share/applications/snoopgod-fierce.desktop
		sudo cp /tmp/snoopgod/system/usr/share/applications/snoopgod-fierce.desktop /usr/share/applications/
		
		## Terminate
		echo -e "[+] Upgrade done successfully"
		echo -e "[!] You need to restart your machine"
	fi

	if [ "$release" = "SnoopGod 22.04.4 LTS" ];
	then
		## Upgrade system
		echo -e "[+] Upgrade system"
		
		if [ -f "/home/$username/.local/share/applications/firefox_firefox.desktop" ];
		then
			firefoxlauncher=$(cat "/home/$username/.local/share/applications/firefox_firefox.desktop" | grep -Po "Icon=(.*).png")
			if [ "$firefoxlauncher" != "Icon=/usr/share/icons/snoopgod/firefox.png" ];
			then
				echo -e "[+] Downloading upgrade"
				wget -q -O "/tmp/system-main.zip" "https://codeload.github.com/snoopgodlinux/system/zip/refs/heads/main"
				unzip -qq /tmp/system-main.zip -d /tmp/snoopgod/
				mv /tmp/snoopgod/system-main/ /tmp/snoopgod/system/
				sudo cp -r /tmp/snoopgod/system/usr/share/icons/snoopgod/firefox.png /usr/share/icons/snoopgod/
				sed -i s/"^Icon=.*"/"Icon=\/usr\/share\/icons\/snoopgod\/firefox.png"/g /home/$username/.local/share/applications/firefox_firefox.desktop
				echo -e "[+] Correct desktop launcher"				
			fi
		fi

		## Terminate
		echo -e "[+] Upgrade done successfully"
		echo -e "[!] You need to restart your machine"

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
