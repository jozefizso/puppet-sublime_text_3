require 'spec_helper'

describe 'sublime_text_2' do
  it do
    should contain_package('SublimeText2').with({
      :provider => 'appdmg',
      :source   => 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg'
    })
  end
end
