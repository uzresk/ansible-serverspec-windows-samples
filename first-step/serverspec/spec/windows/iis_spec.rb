require 'spec_helper'

describe windows_feature('Web-Server') do
  it { should be_installed.by("powershell") }
end

describe port(80) do
  it { should be_listening.with('tcp') }
end
