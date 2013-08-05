require 'spec_helper'

describe 'sublime_text_3::package_control' do
  let(:facts) { default_test_facts }

  it do
    should contain_sublime_text_3__package('Package Control').with({
      :source => 'wbond/sublime_package_control',
      :branch => 'python3'
    })
  end
end
