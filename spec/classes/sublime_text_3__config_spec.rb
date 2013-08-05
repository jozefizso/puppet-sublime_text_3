require 'spec_helper'

describe 'sublime_text_3::config' do
  let(:facts) { default_test_facts }

  let(:sublimedir) { "/Users/#{facts[:boxen_user]}/Library/Application Support/Sublime Text 3" }
  let(:packages_dir) { "#{sublimedir}/Packages" }
  let(:user_packages_dir) { "#{packages_dir}/User" }
  let(:installed_packages_dir) { "#{sublimedir}/Installed Packages" }

  it { should contain_anchor(sublimedir) }
  it { should contain_anchor(packages_dir) }
  it { should contain_anchor(user_packages_dir) }
  it { should contain_anchor(installed_packages_dir) }
end
