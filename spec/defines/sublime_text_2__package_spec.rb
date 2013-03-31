require 'spec_helper'

describe 'sublime_text_2::package' do
  let(:title) { 'test' }
  let(:params) { {:source => 'https://github.com/foo/bar'} }
  let(:facts) do
    {
      :luser      => 'testuser',
      :boxen_home => '/opt/boxen',
    }
  end
  let(:package_dir) { "/Users/#{facts[:luser]}/Library/Application Support/Sublime Text 2/Packages" }

  # FIXME - rspec-puppet should properly stub facts instead of this hack.
  before :each do
    facts.each do |fact, val|
      Facter.add(fact.to_s) do
        setcode { val }
      end
    end
  end

  it { should include_class('sublime_text_2::config') }

  it do
    should contain_repository("#{package_dir}/#{title}").with({
      :source => params[:source],
    })
  end
end
