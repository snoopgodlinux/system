updated
exploitdb
ghidra

chkrootkit
https://www.chkrootkit.org/

sherlock
gathering
https://packages.ubuntu.com/noble/sherlock

sublist3r
gathering
https://github.com/aboul3la/Sublist3r

xsser
vulnerability
https://xsser.03c8.net/

***

goldeneye
stress
https://github.com/jseidl/GoldenEye

nuclei
vulnerability
https://github.com/projectdiscovery/nuclei

netexec
networking
https://github.com/Pennyw0rth/NetExec/releases

subfinder
gathering
https://github.com/projectdiscovery/subfinder

trufflehog
gathering
https://github.com/trufflesecurity/trufflehog

* * *

gophish
exploitation
https://getgophish.com/

airgedon
wireless
https://github.com/v1s1t0r1sh3r3/airgeddon/releases

chisel
networking
https://github.com/jpillora/chisel

wifipumpkin3
wireless
https://github.com/P0cL4bs/wifipumpkin3/releases

kismet
https://www.kismetwireless.net/
wireless
wget -O - https://www.kismetwireless.net/repos/kismet-release.gpg.key --quiet | gpg --dearmor | sudo tee /usr/share/keyrings/kismet-archive-keyring.gpg >/dev/null
echo 'deb [signed-by=/usr/share/keyrings/kismet-archive-keyring.gpg] https://www.kismetwireless.net/repos/apt/git/noble noble main' | sudo tee /etc/apt/sources.list.d/kismet.list >/dev/null
sudo apt update
sudo apt install kismet

telegran
jetbrains
vega