require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'btsync' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end

  it do
    should contain_package('btsync').with({
      :source => 'http://btsync.s3-website-us-east-1.amazonaws.com/BTSync.dmg',
      :provider => 'appdmg'
    })
  end
end
