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

github "boxen", "3.4.2"

# Support for default hiera data in modules

github "module-data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "1.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.0.100"
github "git",         "2.3.1"
github "go",          "1.1.0"
github "homebrew",    "1.9.2"
github "hub",         "1.3.0"
github "inifile",     "1.0.3", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.7.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "7.3.0"
github "stdlib",      "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "chrome",      "1.1.2"
github "onepassword", "1.1.0"
github "dropbox",     "1.2.0"
github "textwrangler","1.0.5"
github "adium",       "1.3.0"
github "quicksilver", "1.3.0"
github "divvy",       "1.0.1"
github "virtualbox",  "1.0.11"
github "wget",        "1.0.1"
github "skype",       "1.0.8"
github "rdio",        "1.0.0"
github "caffeine",    "1.0.0"
github "macvim",      "1.0.0"
github "gimp",        "1.0.1"
github "osx",         "2.2.2"
github "zsh",         "1.0.0"
github "ohmyzsh",     "1.0.0", :repo => "erivello/puppet-ohmyzsh"
github "adobe_reader",  "1.2.0"
github "java",          "1.5.0"
github "clojure",       "1.2.0"
github "tiny_alarm",     "1.0.0", :repo => "bhiles/puppet-tiny_alarm"
github "vagrant",       "3.0.7"
github "sysctl",        "1.0.1"
github "postgresql",    "2.2.3"
github "zsh_notifier",  "0.0.14", :repo => "bhiles/puppet-zsh_notifier"
github "slack",         "1.0.5"
