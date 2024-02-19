## Extras

Want to do a little bit more? Here are somes of the additional packages that can be installed in SnoopGod Linux operating system.

* * *

#### Install `cubic`

```shell
sudo apt-add-repository -y ppa:cubic-wizard/release
sudo apt-get -y update && sudo apt-get -y install cubic
```

* * *

#### Install `evolution`

```shell
sudo apt-get -y install evolution evolution-ews
```

* * *

#### Install `filezilla`

```shell
sudo apt-get -y install filezilla
```

* * *

#### Install `gedit`

```shell
sudo apt-get -y install gedit
```

* * *

#### Install `gimp`

```shell
sudo apt-get -y install gimp gimp-data gimp-data-extras gimp-plugin-registry gimp-texturize
```

* * *

#### Install `inkscape`

```shell
sudo apt-get -y install inkscape
```

* * *

#### Install `kdenlive`

```shell
sudo apt-get -y install kdenlive
```

* * *

#### Install `libreoffice`

```shell
sudo apt-get -y install libreoffice
```

* * *

#### Install `rtorrent`

```shell
sudo apt-get -y install rtorrent
cp /usr/share/doc/rtorrent/examples/rtorrent.rc.gz $HOME/
cd $HOME/ && gzip -d rtorrent.rc.gz
mv rtorrent.rc .rtorrent.rc
```

* * *

#### Install `shotwell`

```shell
sudo apt-get -y install shotwell
```

* * *

#### Install `shutter`

```shell
sudo apt-get -y install shutter
```

* * *

#### Install `sublime-text`

```shell
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg >/dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list >/dev/null
sudo apt-get -y update && sudo apt-get -y install sublime-text
```

* * *

#### Install `subversion`

```shell
sudo apt-get -y install subversion
```

* * *

#### Install `transmission`

```shell
sudo apt-get -y install transmission-cli transmission-common transmission-daemon transmission-gtk
```
