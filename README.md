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

* startup:
  * command: /opt/boxen/homebrew/bin/zsh
* settings:
  * add IR_Black profile
  * keyboard: select 'Use option key as meta'

### Resources

* [Learn how to customize](https://github.com/boxen/our-boxen#customizing)
* [FAQ](https://github.com/boxen/our-boxen/blob/master/docs/faq.md)
