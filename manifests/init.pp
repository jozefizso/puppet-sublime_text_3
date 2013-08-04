# Install Sublime Text 2 into /Applications
#
# Usage:
#
#     include sublime_text_2
class sublime_text_2 {
  include boxen::config
  require sublime_text_2::config

  package { 'SublimeText2':
    provider => 'appdmg',
    source   => 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg';
  }

  file { [
    $sublime_text_2::config::dir,
    $sublime_text_2::config::packages_dir,
    $sublime_text_2::config::user_packages_dir,
    $sublime_text_2::config::installed_packages_dir
  ]:
    ensure => directory
  }

  file { "${boxen::config::bindir}/subl":
    ensure  => link,
    target  => '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl',
    mode    => '0755',
    require => Package['SublimeText2'],
  }
}
