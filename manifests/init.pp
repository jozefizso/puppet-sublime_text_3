# Install Sublime Text 2 into /Applications
#
# Usage:
#
#     include sublime_text_2
class sublime_text_2 {
  package { 'SublimeText2':
    provider => 'appdmg',
    source   => 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1.dmg';
  }
}
