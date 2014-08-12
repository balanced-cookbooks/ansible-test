require 'net/http'
require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe command('nginx -v') do
  it { should return_exit_status 0 }
end

describe service('nginx') do
  it { should_not be_running }
end
