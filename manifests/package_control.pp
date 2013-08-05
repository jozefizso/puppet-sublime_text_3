# Install Sublime Text 3 Package Control
# See: http://wbond.net/sublime_packages/package_control
#
# Usage:
#
#     include sublime_text_3::package_control
class sublime_text_3::package_control {
  sublime_text_3::package { 'Package Control':
    source => 'wbond/sublime_package_control',
    branch => 'python3'
  }
}
