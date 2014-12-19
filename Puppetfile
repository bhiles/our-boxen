# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.7.0"

# Support for default hiera data in modules

github "module_data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "2.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.2.0"
github "git",         "2.7.1"
github "go",          "2.1.0"
github "homebrew",    "1.9.8"
github "hub",         "1.3.0"
github "inifile",     "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.4"
github "nodejs",      "4.0.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.1.7"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "chrome",        "1.2.0"
github "onepassword",   "1.1.3"
github "dropbox",       "1.4.1"
github "textwrangler",  "1.0.7", :repo => "bhiles/puppet-textwrangler"
github "adium",         "1.4.0"
github "quicksilver",   "1.3.0"
github "divvy",         "1.0.1"
github "virtualbox",    "1.0.13"
github "wget",          "1.0.1"
github "skype",         "1.1.0"
github "rdio",          "1.0.0"
github "caffeine",      "1.0.0"
github "macvim",        "1.0.0"
github "gimp",          "1.0.1"
github "osx",           "2.8.0"
github "zsh",           "1.0.0"
github "ohmyzsh",       "1.0.0", :repo => "erivello/puppet-ohmyzsh"
github "adobe_reader",  "1.2.0"
github "java",          "1.7.1"
github "clojure",       "1.3.0"
github "tiny_alarm",    "1.0.1", :repo => "bhiles/puppet-tiny_alarm"
github "vagrant",       "3.2.0"
github "sysctl",        "1.0.1"
github "postgresql",    "3.0.1"
github "zsh_notifier",  "0.0.17", :repo => "bhiles/puppet-zsh_notifier"
github "pcre",          "1.0.0"
github "pkgconfig",     "1.0.0"
github "swig",          "1.0.0"
github "graphviz",      "1.0.0"
github "googlevoiceandvideoplugin",     "1.0.0", :repo => "phase2/puppet-googlevoiceandvideoplugin"
github "libreoffice",   "4.1.8", :repo => "bhiles/puppet-libreoffice"
github "emacs",         "1.3.0"
github "fluid",         "1.0.2"
github "s3cmd",         "0.0.1", :repo => "bhiles/puppet-s3cmd"
github "docker",        "0.7.0" 
github "dash",          "1.0.0"
github "linkinus",      "1.0.3"
github "maven",         "1.0.13", :repo => "bhiles/puppet-maven"
github "zeromq",        "1.0.0"
github "libtool",       "1.0.0"
github "memcached",     "2.0.0"
github "phantomjs",     "2.3.0"
github "toggl",         "1.0.7"
github "qt",            "1.4.0"
github "wkhtmltopdf",   "1.2.1"
github "dotfiles",      "0.0.4", :repo => "bhiles/puppet-dotfiles"