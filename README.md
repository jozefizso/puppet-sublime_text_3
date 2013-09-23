# Sublime Text 3 Puppet Module for Boxen

[![Build Status](https://travis-ci.org/jozefizso/puppet-sublime_text_3.png?branch=master)](https://travis-ci.org/jozefizso/puppet-sublime_text_3)
[![Dependency Status](https://gemnasium.com/jozefizso/puppet-sublime_text_3.png)](https://gemnasium.com/jozefizso/puppet-sublime_text_3)

Install [Sublime Text 3 beta](http://www.sublimetext.com/3), a text-editor/IDE for Mac

Current Version: 3 Beta (Build 3047)

## Usage

```puppet
include sublime_text_3
include sublime_text_3::package_control

sublime_text_3::package { 'Emmet':
  source => 'sergeche/emmet-sublime'
}
```

### Packages Management

You can manage Sublime Text 3 packages by the `sublime_text_3::package` class. Packages can be defined by using GitHub repository name or URL to .sublime-package file.

#### GitHub repository name

Package will be cloned from GitHub and installed into `Packages` directory.

```puppet
# install package named "Theme - Soda" from GitHub repository
# will be stored in "Packages/Theme - Soda"
sublime_text_3::package { 'Theme - Soda':
  source => 'buymeasoda/soda-theme/'
}
```


#### URL to .sublime-package file

Package file will be downloaded from the URL and installed into `Installed Packages` directory.

```puppet
# install package named "Alignment" from source URL
# will be stored in "Installed Packages/Alignment"
sublime_text_3::package { 'Alignment':
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
