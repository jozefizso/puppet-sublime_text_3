# Public: Install a Sublime Text 2 package.
#
# namevar - The name of the package.
# source  - The location of the git repository containing the package.
#
# Examples
#
#   sublime_text_2::package { 'Emmet':
#     source => 'sergeche/emmet-sublime'
#   }
define sublime_text_2::package($source) {
  require sublime_text_2::config

  if $source =~ /\.sublime-package$/ {
    $package_file = "${sublime_text_2::config::installed_package_dir}/${name}.sublime-package"
    exec { "download sublime text 2 package '${name}'":
      command => "curl ${source} -L -q -o '${package_file}'",
      creates => $package_file
    }
  } else {
    repository { "${sublime_text_2::config::package_dir}/${name}":
      source => $source
    }
  }
}
