require 'net/http'
require 'serverspec'

set :backend, :exec

describe command('nginx -v') do
  its(:exit_status) { should eq(0) }
end

describe service('nginx') do
  it { should_not be_running }
end
