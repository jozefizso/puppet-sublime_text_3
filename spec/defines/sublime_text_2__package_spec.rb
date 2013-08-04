require 'spec_helper'

describe 'sublime_text_2::package' do
  let(:facts) { default_test_facts }
  let(:packages_dir) { "/Users/#{facts[:boxen_user]}/Library/Application Support/Sublime Text 2" }

  context 'package source defined as github repository URL' do
    let(:title) { 'TestPlugin' }
    let(:params) { {:source => 'https://github.com/foo/bar'} }

    it do
      should include_class('sublime_text_2::config')

      should contain_repository("#{packages_dir}/Packages/TestPlugin").with({
        :source => params[:source],
      })
    end
  end

  context 'package source defined as github repository name' do
    let(:title) { 'Emmet' }
    let(:params) { { :source => 'sergeche/emmet-sublime' } }

    it do
      should include_class('sublime_text_2::config')

      should contain_repository("#{packages_dir}/Packages/Emmet").with({
        :source => params[:source],
      })
    end
  end

  context 'package source defined as URL to .sublime-package file' do
    let(:title) { 'MyPackage' }
    let(:params) { { :source => 'https://example.com/MyPackage.sublime-package' } }

    it do
      should include_class('sublime_text_2::config')

      should contain_exec('download Sublime Text 2 package \'MyPackage\'').with({
        :command => "curl #{params[:source]} -L -q -o '#{packages_dir}/Installed Packages/MyPackage.sublime-package'",
        :creates => "#{packages_dir}/Installed Packages/MyPackage.sublime-package"
      })
    end
  end
end
