require 'spec_helper'

describe 'sublime_text_2' do
  let(:facts) { default_test_facts }

  let(:sublimedir) { "/Users/#{facts[:boxen_user]}/Library/Application Support/Sublime Text 2" }
  let(:packages_dir) { "#{sublimedir}/Packages" }
  let(:user_packages_dir) { "#{packages_dir}/User" }
  let(:installed_packages_dir) { "#{sublimedir}/Installed Packages" }

  it do
    should include_class('boxen::config')

    should contain_package('SublimeText2').with({
      :provider => 'appdmg',
      :source   => 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg'
    })

    should contain_file(sublimedir).with_ensure('directory')
    should contain_file(packages_dir).with_ensure('directory')
    should contain_file(user_packages_dir).with_ensure('directory')
    should contain_file(installed_packages_dir).with_ensure('directory')

    should contain_file("#{facts[:boxen_home]}/bin/subl").with({
      :ensure  => 'link',
      :target  => '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl',
      :require => 'Package[SublimeText2]'
    })
  end
end
