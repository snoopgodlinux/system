## Troubleshooting

Below you will find a list of some issues that you are likely to encounter and for which a solution has been found.

* * *

#### Enable/Disable `apt_news` notification

To disable Pro config `apt_news`

```shell
sudo pro config set apt_news=false
```

To revert it to initial configuration

```shell
sudo pro config set apt_news=true
```

* * *

#### Fixing `Key is stored in legacy trusted.gpg keyring`

If you use a PPA or add an external repository in BlackBuntu v22.04 and later versions, chances are that you will see sooner or later a message like this:

```plain
W: [...] Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details.
```

To resolve this issue simply run the following command in your Terminal.

```shell
sudo cp /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d
```
