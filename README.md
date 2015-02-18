# My Boxen!

Dependency manager for your Mac.

### Pre-Boxen Setup

Git

```
# private/public keys
cd ~/.ssh && ssh-keygen
cat id_rsa.pub | pbcopy              		
# add public key to github (https://github.com/settings/ssh)
git config --global user.name "bhiles"
git config --global user.email bennetthiles@gmail.com
git clone https://github.com/bhiles/bhiles.github.io (osx will ask for passphrase)
```

Xcode

```
xcode-select --install
```

### Boxen Setup

```
sudo mkdir -p /opt/boxen
sudo chown ${USER}:staff /opt/boxen
git clone https://github.com/bhiles/our-boxen /opt/boxen/repo
cd /opt/boxen/repo
./script/boxen
```

It should run successfully, and should tell you to source a shell script
in your environment.
For users without a bash or zsh config or a `~/.profile` file,
Boxen will create a shim for you that will work correctly.

Once your shell is ready, open a new tab/window in your Terminal
and you should be able to successfully run `boxen --env`.
If that runs cleanly, you're in good shape.

If you run into trouble, take a look at the [original our-boxen docs](https://github.com/boxen/our-boxen).

### Manual Setup

Boxen automates installing many applications, but I don't know Boxen 
well enough to automate these steps, so for now, they are manual.

Terminal 

* startup
  * command: /opt/boxen/homebrew/bin/zsh
* settings
  * add IR_Black profile
    * [zip](https://github.com/jperkins/IR-Black/archive/master.zip)
    * open IR_Black.terminal (you need to allow this application to be run)
    * "Default Window Settings" => "IR_Black"
  * keyboard: select 'Use option key as meta'

Dropbox

* Configure for 1password
* (Potentially) remove Documents directory, and put Dropbox directory in its place

Chrome

* Extensions
  * [1password extension](https://chrome.google.com/webstore/detail/1password-password-manage/aomjjhallfgjeglblehebfpbcfeobpgk/related?hl=en-US)
  * Chromecast
  * Vimium
* Install Silverlight

Toggl key bindings

* control+option+s (start/stop)
* control+option+t (show app)

Fluid apps

* Trello 
  * [url](https://trello.com)
  * [icon](https://www.flickr.com/photos/nathos/6299670107/)
* Soundcloud
  * [url](http://www.soundcloud.com)
  * [icon](https://www.flickr.com/photos/slippyd/8292777643/)

Adium preferences

* "Background chat notifications" presets

Users & Groups - Login Items

* Dropbox
* Divvy
* Caffeine
* Tinyalarm
* Toggl

Mission Control 

* removed all keyboard/mouse shortcuts
* Hot Corners
  * upper right: screen saver
  * bottom right: desktop

Divvy key bindings

* control+option+d (start)
* control+option+z (whole screen)
* control+option+1 (left half-screen)
* control+option+2 (right half-screen)

Spotlight - Keyboard shortcut

* control + spacebar
			
Mail

* added email addresses for mail, contacts, calendar
* default send from bennetthiles
* iphone 
  * default calendar = bennetthiles
  * include contacts from both both gmails				

fabric

```
pip install fabric
```

### Resources

* [Learn how to customize](https://github.com/boxen/our-boxen#customizing)
* [FAQ](https://github.com/boxen/our-boxen/blob/master/docs/faq.md)
