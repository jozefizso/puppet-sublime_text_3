# Sublime Text 2 Puppet Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-sublime_text_2.png?branch=master)](https://travis-ci.org/boxen/puppet-sublime_text_2)

Install [Sublime Text 2](http://www.sublimetext.com/2), a text-editor/IDE for Mac

## Usage

```puppet
include sublime_text_2
include sublime_text_2::package_control

sublime_text_2::package { 'Emmet':
  source => 'sergeche/emmet-sublime'
}
```

## Required Puppet Modules

* [boxen] >= 2.1.0
* [repository] >= 2.2.0
* [stdlib] >= 4.1.0


[boxen]: https://github.com/boxen/puppet-boxen
[repository]: https://github.com/boxen/puppet-repository
[stdlib]: https://github.com/puppetlabs/puppetlabs-stdlib
