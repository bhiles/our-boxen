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

Once your shell is ready, open a new tab/window in your Terminal
and you should be able to successfully run `boxen --env`.
If that runs cleanly, you're in good shape.

## What You Get

This template project provides the following by default:

* Homebrew
* Homebrew-Cask
* Git
* Hub
* dnsmasq w/ .dev resolver for localhost
* rbenv
* Full Disk Encryption requirement
* Node.js 0.8
* Node.js 0.10
* Node.js 0.12
* Ruby 1.9.3
* Ruby 2.0.0
* Ruby 2.1.7
* Ruby 2.2.3
* ack
* Findutils
* GNU tar

## Customizing

You can always check out the number of existing modules we already
provide as optional installs under the
[boxen organization](https://github.com/boxen). These modules are all
tested to be compatible with Boxen. Use the `Puppetfile` to pull them
in dependencies automatically whenever `boxen` is run.

### Including boxen modules from github (boxen/puppet-<name>)

You must add the github information for your added Puppet module into your Puppetfile at the root of your
boxen repo (ex. /path/to/your-boxen/Puppetfile):

    # Core modules for a basic development environment. You can replace
    # some/most of these if you want, but it's not recommended.

    github "repository", "2.0.2"
    github "dnsmasq",    "1.0.0"
    github "gcc",        "1.0.0"
    github "git",        "1.2.2"
    github "homebrew",   "1.1.2"
    github "hub",        "1.0.0"
    github "inifile",    "0.9.0", :repo => "cprice404/puppetlabs-inifile"
    github "nginx",      "1.4.0"
    github "nodejs",     "2.2.0"
    github "ruby",       "4.1.0"
    github "stdlib",     "4.0.2", :repo => "puppetlabs/puppetlabs-stdlib"
    github "sudo",       "1.0.0"

    # Optional/custom modules. There are tons available at
    # https://github.com/boxen.

    github "java",     "1.6.0"

In the above snippet of a customized Puppetfile, the bottom line
includes the Java module from Github using the tag "1.6.0" from the github repository
"[boxen/puppet-java/releases](https://github.com/boxen/puppet-java/releases)".  The function "github" is defined at the top of the Puppetfile
and takes the name of the module, the version, and optional repo location:

    def github(name, version, options = nil)
      options ||= {}
      options[:repo] ||= "boxen/puppet-#{name}"
      mod name, version, :github_tarball => options[:repo]
    end

Now Puppet knows where to download the module from when you include it in your site.pp or mypersonal.pp file:

    # include the java module referenced in my Puppetfile with the line
    # github "java",     "1.6.0"
    include java

### Hiera

Hiera is preferred mechanism to make changes to module defaults (e.g. default
global ruby version, service ports, etc). This repository supplies a
starting point for your Hiera configuration at `config/hiera.yml`, and an
example data file at `hiera/common.yaml`. See those files for more details.

The default `config/hiera.yml` is configured with a hierarchy that allows
individuals to have their own hiera data file in
`hiera/users/{github_login}.yaml` which augments and overrides
site-wide values in `hiera/common.yaml`. This default is, as with most of the
configuration in the example repo, a great starting point for many
organisations, but is totally up to you. You might want to, for
example, have a set of values that can't be overridden by adding a file to
the top of the hierarchy, or to have values set on specific OS
versions:

```yaml
# ...
:hierarchy:
  - "global-overrides.yaml"
  - "users/%{::github_login}"
  - "osx-%{::macosx_productversion_major}"
  - common
```
>>>>>>> upstream/master

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
