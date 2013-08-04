# Sublime Text 2 Puppet Module for Boxen

[![Build Status](https://travis-ci.org/jozefizso/puppet-sublime_text_2.png?branch=master)](https://travis-ci.org/jozefizso/puppet-sublime_text_2)

Install [Sublime Text 2](http://www.sublimetext.com/2), a text-editor/IDE for Mac

## Usage

```puppet
include sublime_text_2
include sublime_text_2::package_control

sublime_text_2::package { 'Emmet':
  source => 'sergeche/emmet-sublime'
}
```

### Packages Management

You can manage Sublime Text 2 packages by the `sublime_text2::package` class. Packages can be defined by using GitHub repository name or URL to .sublime-package file.

#### GitHub repository name

Package will be cloned from GitHub and installed into `Packages` directory.

```puppet
# install package named "Theme - Soda" from GitHub repository
# will be stored in "Packages/Theme - Soda"
sublime_text2::package { 'Theme - Soda':
  source => 'buymeasoda/soda-theme/'
}
```


#### URL to .sublime-package file

Package file will be downloaded from the URL and installed into `Installed Packages` directory.

```puppet
# install package named "Alignment" from source URL
# will be stored in "Installed Packages/Alignment"
sublime_text2::package { 'Alignment':
  source => 'http://sublime.wbond.net/Alignment.sublime-package'
}
```

## Required Puppet Modules

* [boxen] >= 2.1.0
* [repository] >= 2.2.0
* [stdlib] >= 4.1.0


[boxen]: https://github.com/boxen/puppet-boxen
[repository]: https://github.com/boxen/puppet-repository
[stdlib]: https://github.com/puppetlabs/puppetlabs-stdlib
