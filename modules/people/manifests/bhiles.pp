class people::bhiles {
  include chrome
  include onepassword
  include dropbox
  include textwrangler
  include adium
  include quicksilver
  include divvy
  include virtualbox
  include wget
  include skype
  include rdio
  include caffeine
  include macvim
  include gimp
  include zsh
  include ohmyzsh
  include adobe_reader

  include osx::global::disable_remote_control_ir_receiver
  include osx::dock::autohide
  include osx::dock::clear_dock
  include osx::dock::dim_hidden_apps

  include java
  include clojure
  include tiny_alarm
  include vagrant
  vagrant::box { 'precise64/virtualbox':
    source => 'https://vagrantcloud.com/hashicorp/precise64/version/2/provider/virtualbox.box'
  }
  include postgresql
  include zsh_notifier
}
