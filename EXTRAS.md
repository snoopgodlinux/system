## Extras

Discover a wealth of additional features and enhancements for your SnoopGod Linux system with our extensive extras package guide.

* * *

#### Install `Chrome`

To install **Chrome**, open your terminal and enter the following command:

```shell
wget -O "/tmp/google-chrome.deb" "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo dpkg -i /tmp/google-chrome.deb

```

* * *

#### Install `Cubic`

To install **Cubic**, open your terminal and enter the following command:

```bash
sudo apt-add-repository ppa:cubic-wizard/release
sudo apt update && sudo apt install cubic
```

* * *

#### Install `Filezilla`

To install **Filezilla**, open your terminal and enter the following command:

```bash
wget -O "/tmp/FileZilla_3.67.0_x86_64-linux-gnu.tar.xz" "https://dl3.cdn.filezilla-project.org/client/FileZilla_3.67.0_x86_64-linux-gnu.tar.xz?h=Ja5AfurzAal49Gsma2V-6w&x=1717175520"
tar -xvf /tmp/FileZilla_3.67.0_x86_64-linux-gnu.tar.xz -C /tmp/
sudo cp -r /tmp/FileZilla3/bin /usr/
sudo cp -r /tmp/FileZilla3/lib /usr/
sudo cp -r /tmp/FileZilla3/share /usr/
```

* * *

#### Install `Gimp`

To install **Gimp**, open your terminal and enter the following command:

```bash
sudo apt install gimp gimp-data gimp-data-extras gimp-plugin-registry gimp-texturize
```

* * *

#### Install `Gparted`

To install **gparted**, open your terminal and enter the following command:

```shell
sudo apt install gparted
```

* * *

#### Install `Hardinfo`

To install **hardinfo**, open your terminal and enter the following command:

```shell
sudo apt install hardinfo
```

* * *

#### Install `Inkscape`

To install **Inkscape**, open your terminal and enter the following command:

```bash
sudo apt install inkscape
```

* * *

#### Install `Kdenlive`

To install **Kdenlive**, open your terminal and enter the following command:

```bash
sudo apt install kdenlive
```

* * *

#### Install `Libreoffice`

To install **Libreoffice**, open your terminal and enter the following command:

```bash
sudo apt install libreoffice
```

* * *

#### Install `Restricted Extras`

To install **Restricted Extras**, open your terminal and enter the following command:

```shell
sudo apt install kubuntu-restricted-extras ubuntu-restricted-extras
```

* * *

#### Install `Shotwell`

To install **Shotwell**, open your terminal and enter the following command:

```bash
sudo apt install shotwell
```

* * *

#### Install `Shutter`

To install **Shutter**, open your terminal and enter the following command:

```bash
sudo apt install shutter
```

* * *

#### Install `Sublime Text`

To install **Sublime Text**, open your terminal and enter the following command:

```bash
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg >/dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list >/dev/null
sudo apt update && sudo apt install sublime-text
```

* * *

#### Install `Virtualbox`

To install **Virtualbox**, open your terminal and enter the following command:

```bash
sudo apt install virtualbox
```

* * *

#### Install `Yakuake`

To install **yakuake**, open your terminal and enter the following command:

```shell
sudo apt install yakuake
```

* * *

#### Install `Warp`

To install **Warp**, open your terminal and enter the following command:

```shell
wget -O "/tmp/warp.deb" "https://releases.warp.dev/stable/v0.2024.05.28.08.02.stable_00/warp-terminal_0.2024.05.28.08.02.stable.00_amd64.deb"
sudo dpkg -i /tmp/warp.deb
```
