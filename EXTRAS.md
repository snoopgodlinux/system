## Extras

Discover a wealth of additional features and enhancements for your SnoopGod Linux system with our extensive extras package guide.

* * *

#### Install `Apache2`

To install **Apache2**, open your terminal and enter the following command:

```shell
sudo apt install apache2
```

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

#### Install `Evolution`

To install **Evolution**, open your terminal and enter the following command:

```bash
sudo apt install evolution evolution-ews
```

* * *

#### Install `Filezilla`

To install **Filezilla**, open your terminal and enter the following command:

```bash
sudo apt install filezilla
```

* * *

#### Install `Gedit`

To install **Gedit**, open your terminal and enter the following command:

```bash
sudo apt install gedit
```

* * *

#### Install `Gimp`

To install **Gimp**, open your terminal and enter the following command:

```bash
sudo apt install gimp gimp-data gimp-data-extras gimp-plugin-registry gimp-texturize
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

#### Install `Postfix`

To install **Postfix**, open your terminal and enter the following command:

```bash
sudo apt install postfix
```

* * *

#### Install `Qt6`

To install **Qt6**, open your terminal and enter the following command:

```shell
sudo apt install qt6-base-dev qtcreator
```

* * *

#### Install `rTorrent`

To install **rTorrent**, open your terminal and enter the following command:

```bash
sudo apt install rtorrent
cp /usr/share/doc/rtorrent/examples/rtorrent.rc.gz $HOME/
cd $HOME/ && gzip -d rtorrent.rc.gz
mv rtorrent.rc .rtorrent.rc
```

* * *

#### Install `Sendemail`

To install **Sendemail**, open your terminal and enter the following command:

```bash
sudo apt install sendemail
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

#### Install `Subversion`

To install **Subversion**, open your terminal and enter the following command:

```bash
sudo apt install subversion
```

* * *

#### Install `Transmission`

To install **Transmission**, open your terminal and enter the following command:

```bash
sudo apt install transmission-cli transmission-common transmission-daemon transmission-gtk
```