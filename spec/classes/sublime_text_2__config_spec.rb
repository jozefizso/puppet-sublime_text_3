require 'spec_helper'

describe 'sublime_text_2::config' do
  let(:facts) { default_test_facts }

  let(:sublimedir) { "/Users/#{facts[:boxen_user]}/Library/Application Support/Sublime Text 2" }
  let(:package_dir) { "#{sublimedir}/Packages" }
  let(:user_package_dir) { "#{package_dir}/User" }
  let(:installed_package_dir) { "#{sublimedir}/Installed Packages" }

  it { should contain_anchor(sublimedir) }
  it { should contain_anchor(package_dir) }
  it { should contain_anchor(user_package_dir) }
  it { should contain_anchor(installed_package_dir) }
end
