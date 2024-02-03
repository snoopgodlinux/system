#!/usr/bin/env bash
#
# [Release]: SnoopGod 22.04.3 LTS amd64
# [Website]: https://snoopgod.com/releases/?ver=22.04.3
# [License]: http://www.gnu.org/licenses/gpl-3.0.html

## -------------- ##
## DEFINE ACTIONS ##
## -------------- ##

## Update System
## -------------
function updatehook()
{
	echo -e "Update system\n"
}

## -------------- ##
## EXECUTE SCRIPT ##
## -------------- ##

## Launch
## ------
function launch()
{
	# Execute Actions
	updatehook
}

## -------- ##
## CALLBACK ##
## -------- ##

launch
