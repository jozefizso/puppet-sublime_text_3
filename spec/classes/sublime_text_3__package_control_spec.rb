require 'spec_helper'

describe 'sublime_text_3::package_control' do
  let(:facts) { default_test_facts }

  it do
    should contain_sublime_text_3__package('Package Control').with({
      :source => 'https://sublime.wbond.net/Package%20Control.sublime-package'
    })
  end
end
