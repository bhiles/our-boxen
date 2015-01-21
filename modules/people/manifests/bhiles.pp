class people::bhiles {

  # basic applications
  include chrome
  include googlevoiceandvideoplugin
  include onepassword
  include dropbox
  include textwrangler
  include adium
  include quicksilver
  include divvy
  include skype
  include rdio
  include caffeine
  include gimp
  include adobe_reader
  include toggl
  include fluid
  include tiny_alarm
  include graphviz
  include libreoffice
  include hipchat

  # developer applications
  include zsh
  include java
  include clojure
  include emacs
  include dotfiles
  include zsh_notifier
  include wget
  include s3cmd
  include ansible
  include linkinus
  include virtualbox
  include vagrant
  include docker
  include dash
  include maven
  include intellij
  include libtool
  include memcached
  #include memcached::lib skipping bc of trouble on latest Mavericks
  include phantomjs::1_9_0
  include postgresql
  include jmeter

  # configurations
  include osx::global::disable_remote_control_ir_receiver
  include osx::dock::autohide
  include osx::dock::clear_dock
  include osx::dock::dim_hidden_apps

  # only install these if desired
  #include macvim
  #include ohmyzsh
  #include zeromq
}
