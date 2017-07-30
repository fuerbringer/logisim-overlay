# Logisim-Evolution Overlay 
A Portage overlay for [Logisim-Evolution](https://github.com/reds-heig/logisim-evolution) on Gentoo Linux!

_Warning:_ This is an unofficial package. Always check the `.ebuild`s before emerging.

## How to install
### Layman
Adding this repository should be simple if you have [Layman](https://wiki.gentoo.org/wiki/Layman) installed:
```
layman -o https://github.com/fuerbringer/logisim-overlay/raw/master/logisim-evolution.xml -f -a logisim-evolution
```
Now install Logisim-Evolution:
```
emerge sci-electronics/logisim-evolution
```

Reference: [Gentoo Wiki | Adding custom repositories](https://wiki.gentoo.org/wiki/Layman#Adding_custom_repositories)

### Local overlay
Alternatively you can install it using the "manual" way:

Create a new file called `/etc/portage/repos.conf/logisim-evolution.conf` and paste the following contents:
```
[logisim-evolution]
location = /usr/local/portage/logisim-evolution
sync-type = git
sync-uri = https://github.com/fuerbringer/logisim-overlay.git
priority=9999
```
After doing that you should sync your repositories using `emerge --sync`.

Then you're ready to install Logisim using `emerge sci-electronics/logisim-evolution`. 

## Issues
If you experience _any_ issues with this overlay, please submit a report [here](https://github.com/fuerbringer/logisim-overlay/issues/new).
