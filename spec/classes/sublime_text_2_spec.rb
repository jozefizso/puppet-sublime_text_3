require 'spec_helper'

describe 'sublime_text_2' do
  let(:facts) { default_test_facts }

  it do
    should include_class('boxen::config')

    should contain_package('SublimeText2').with({
      :provider => 'appdmg',
      :source   => 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg'
    })

    should contain_file("#{facts[:boxen_home]}/bin/subl").with({
      :ensure  => 'link',
      :target  => '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl',
      :require => 'Package[SublimeText2]'
    })
  end
end
