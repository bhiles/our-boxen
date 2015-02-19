# My Boxen!

Dependency manager for your Mac.

# Setup

### Pre-Boxen Setup

**Xcode**

```
# use git, to trigger the download Xcode modal
git clone git@github.com:bhiles/our-boxen.git
# a modal will ask you to install Xcode, do it!
```



### Boxen Setup

```
sudo mkdir -p /opt/boxen
sudo chown ${USER}:staff /opt/boxen
git clone https://github.com/bhiles/our-boxen /opt/boxen/repo
cd /opt/boxen/repo
./script/boxen
```

This should take a while, so grab some coffee!

Some Git repos probably had trouble getting downloaded since I haven't setup SSH keys from this computer.

```
# private/public keys
mkdir ~/.ssh && cd ~/.ssh && ssh-keygen
open https://github.com/settings/ssh
cat id_rsa.pub | pbcopy              		
# add public key to github
git config --global user.name "bhiles"
git config --global user.email bennetthiles@gmail.com
# use the SSH keys
mkdir ~/src && cd ~/src
git clone git@github.com:bhiles/our-boxen.git (osx will ask for passphrase)
# restart boxen to install remaining pieces
cd /opt/boxen/repo
./script/boxen
```

If you run into trouble, take a look at the [original our-boxen docs](https://github.com/boxen/our-boxen).

### Manual Setup

Boxen automates installing many applications, but I don't know Boxen 
well enough to automate these steps, so for now, they are manual.

**Dotfiles**

Run install script

```
cd ~/.dotfiles
./script/bootstrap
```

**Terminal**

* startup
  * command: /opt/boxen/homebrew/bin/zsh
* settings
  * add IR_Black profile
    * [zip](https://github.com/jperkins/IR-Black/archive/master.zip)
    * open IR_Black.terminal (you need to allow this application to be run)
    * "Default Window Settings" => "IR_Black"
  * keyboard: select 'Use option key as meta'

**Dropbox**

* Configure for 1password
* (Potentially) remove Documents directory, and put Dropbox directory in its place

**Chrome**

* Extensions
  * [1password extension](https://chrome.google.com/webstore/detail/1password-password-manage/aomjjhallfgjeglblehebfpbcfeobpgk/related?hl=en-US)
  * [Chromecast](https://chrome.google.com/webstore/detail/google-cast/boadgeojelhgndaghljhdicfkmllpafd?hl=en) (hide extension)
  * [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en) (hide extension)
* Settings
  * chrome://settings/ -> Passwords and forms -> Uncheck “Offer to save your web passwords” 
  * Set as default browser

**Toggl key bindings**

* control+option+s (start/stop)
* control+option+t (show app)

**Fluid apps**

* Trello 
  * [url](https://trello.com)
  * [icon](https://www.flickr.com/photos/nathos/6299670107/)
* Soundcloud
  * [url](http://www.soundcloud.com)
  * [icon](https://www.flickr.com/photos/slippyd/8292777643/)

**Adium preferences**

* Events -> Event presets -> “Visual Notifications”

**Spotlight - Keyboard shortcut**

* control + spacebar

**Users & Groups - Login Items**

* Dropbox
* Divvy
* Caffeine
* Tinyalarm
* Toggl

**Mission Control**

* removed all keyboard/mouse shortcuts
* Hot Corners
  * upper right: screen saver
  * bottom right: desktop

**Mail**

* added email addresses for mail, contacts, calendar  

**Divvy key bindings**

* Security & Privacy -> Privacy -> Accessibility -> Add Divvy
* control+option+d (start)
* control+option+z (whole screen)
* control+option+1 (left half-screen)
* control+option+2 (right half-screen)

**Slack**

Install from App Store

**fabric**

```
pip install fabric
```

# Resources

* [Learn how to customize](https://github.com/boxen/our-boxen#customizing)
* [FAQ](https://github.com/boxen/our-boxen/blob/master/docs/faq.md)
