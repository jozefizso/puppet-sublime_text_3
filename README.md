# Sublime Text 2 Puppet Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-sublime_text_2.png?branch=master)](https://travis-ci.org/boxen/puppet-sublime_text_2)

Install [Sublime Text 2](http://www.sublimetext.com//), a text-editor/IDE for Mac

## Usage

```puppet
include sublime_text_2
sublime_text_2::package { 'Emmet':
  source => 'sergeche/emmet-sublime'
}
```

## Required Puppet Modules

None.
