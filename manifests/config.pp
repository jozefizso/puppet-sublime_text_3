# Internal: Prepare your system for Sublime Text 2 packages.
#
# Examples
#
#   include sublime_text_2::config
class sublime_text_2::config {
  $dir        = "/Users/${::luser}/Library/Application Support/Sublime Text 2"
  $packagedir = "${dir}/Packages"

  file { [$dir, $packagedir]:
    ensure => directory
  }
}
