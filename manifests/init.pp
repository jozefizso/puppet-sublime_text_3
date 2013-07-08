# Install Sublime Text 2 into /Applications
#
# Usage:
#
#     include sublime_text_2
class sublime_text_2 {
  package { 'SublimeText2':
    provider => 'appdmg',
    source   => 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg';
  }

  file { "${boxen::config::bindir}/subl":
    ensure  => link,
    target  => '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl',
    mode    => '0755',
    require => Package['SublimeText2'],
  }
}
