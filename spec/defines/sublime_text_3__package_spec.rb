require 'spec_helper'

describe 'sublime_text_3::package' do
  let(:facts) { default_test_facts }
  let(:packages_dir) { "/Users/#{facts[:boxen_user]}/Library/Application Support/Sublime Text 3" }

  context 'package source defined as github repository URL' do
    let(:title) { 'TestPlugin' }
    let(:params) { {:source => 'https://github.com/foo/bar'} }

    it do
      should include_class('sublime_text_3::config')

      should contain_repository("#{packages_dir}/Packages/TestPlugin").with({
        :source => params[:source],
        :ensure => 'master'
      })
    end
  end

  context 'package source defined as github repository name' do
    let(:title) { 'Emmet' }
    let(:params) { { :source => 'sergeche/emmet-sublime' } }

    it do
      should include_class('sublime_text_3::config')

      should contain_repository("#{packages_dir}/Packages/Emmet").with({
        :source => params[:source],
        :ensure => 'master'
      })
    end
  end

  context 'package source defined as github repository name with custom branch' do
    let(:title) { 'Emmet' }
    let(:params) {
      {
        :source => 'sergeche/emmet-sublime',
        :branch => 'feature_branch'
      }
    }

    it do
      should include_class('sublime_text_3::config')

      should contain_repository("#{packages_dir}/Packages/Emmet").with({
        :source => params[:source],
        :ensure => 'feature_branch'
      })
    end
  end

  context 'package source defined as URL to .sublime-package file' do
    let(:title) { 'MyPackage' }
    let(:params) { { :source => 'https://example.com/MyPackage.sublime-package' } }

    it do
      should include_class('sublime_text_3::config')

      should contain_exec('download Sublime Text 3 package \'MyPackage\'').with({
        :command => "curl #{params[:source]} -L -q -o '#{packages_dir}/Installed Packages/MyPackage.sublime-package'",
        :creates => "#{packages_dir}/Installed Packages/MyPackage.sublime-package",
        :require => "File[#{packages_dir}/Installed Packages]"
      })
    end
  end
end
