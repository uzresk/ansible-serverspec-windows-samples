require 'serverspec'
require 'net/ssh'
require 'winrm'
 
set :backend, :winrm
 
RSpec.configure do |c|
  host = ENV['TARGET_HOST']
  user = ENV['USER'].dup
  pass = ENV['PASSWORD'].dup
  puts user
  puts pass
  endpoint = "http://" + host + ":5985/wsman"
 
  c.winrm = ::WinRM::WinRMWebService.new(endpoint, :ssl, :user => user, :pass => pass)
  c.winrm.set_timeout 300 # 5 minutes max timeout for any operation
end
