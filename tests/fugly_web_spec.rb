require 'net/http'
require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe command('nginx --version') do
  it { should return_exit_status 0 }
end

describe service('nginx') do
  it { should be_running }
end

describe service('pooopopsdf') do
  it { should be_running }
end
