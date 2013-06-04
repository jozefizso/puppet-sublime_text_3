# Install Sublime Text 2 Package Control
# See: http://wbond.net/sublime_packages/package_control
#
# Usage:
#
#     include sublime_text_2::package_control
class sublime_text_2::package_control {
  sublime_text_2::package { 'Package Control':
    source => 'https://sublime.wbond.net/Package%20Control.sublime-package'
  }
}
