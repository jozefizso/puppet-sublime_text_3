require 'spec_helper'

describe 'sublime_text_2::package' do
  let(:facts) { default_test_facts }

  let(:title) { 'test' }
  let(:params) { {:source => 'https://github.com/foo/bar'} }
  
  let(:package_dir) { "/Users/#{facts[:boxen_user]}/Library/Application Support/Sublime Text 2/Packages" }

  it { should include_class('sublime_text_2::config') }

  it do
    should contain_repository("#{package_dir}/#{title}").with({
      :source => params[:source],
    })
  end
end
