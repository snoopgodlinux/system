#!/usr/bin/env bash
#
# [Release]: SnoopGod 22.04.4 LTS amd64
# [Website]: https://snoopgod.com/releases/?ver=22.04.4
# [License]: http://www.gnu.org/licenses/gpl-3.0.html

## -------------- ##
## DEFINE ACTIONS ##
## -------------- ##

## Upgrade System
## ---------------
function upgradehook()
{
	echo -e "Upgrade system"
	release=$(lsb_release -d | grep -Po 'SnoopGod ([0-9]{2}.[0-9]{2}.[0-9]{1}) LTS')

	if [ "$release" = "SnoopGod 22.04.3 LTS" ];
	then
		## Retrieve system repository
		echo -e "[+] Downloading upgrade"
		wget -q -O "/tmp/system-main.zip" "https://codeload.github.com/snoopgodlinux/system/zip/refs/heads/main"
		unzip -qq /tmp/system-main.zip -d /tmp/snoopgod/
		mv /tmp/snoopgod/system-main/ /tmp/snoopgod/system/

		## Copy config directory
		echo -e "[+] Upgrading general configuration"
		rm -f $HOME/.config/kdedefaults/kcm-about-distrorc
		cp /tmp/snoopgod/system/etc/skel/.config/kdedefaults/kcm-about-distrorc $HOME/.config/kdedefaults/

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
		sudo cp /tmp/snoopgod/system/etc/os-release /etc/

		## Copy wallpapers
		echo -e "[+] Upgrading System wallpapers"
		sudo rm -rf /usr/share/wallpapers/*
		sudo cp -r /tmp/snoopgod/system/usr/share/wallpapers/* /usr/share/wallpapers/

		## Correct desktop launcher
		echo -e "[+] Correct desktop launcher"
		sudo rm -rf /usr/share/applications/snoopgod-fierce.desktop
		sudo cp /tmp/snoopgod/system/usr/share/applications/snoopgod-fierce.desktop /usr/share/applications/
		echo -e "[+] Upgrade done successfully"
		echo -e "[!] You need to restart your machine"
	fi

	if [ "$release" = "SnoopGod 22.04.4 LTS" ];
	then
		echo -e "[+] Correct desktop launcher"
		sed -i s/"^Icon=.*"/"Icon=\/snap\/firefox\/3779\/default256.png"/g $HOME/.local/share/applications/firefox_firefox.desktop
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
	upgradehook
}

## -------- ##
## CALLBACK ##
## -------- ##

launch
