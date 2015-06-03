require "serverspec"

# Required by serverspec
set :backend, :exec

describe file('/usr/local/bin/cmake') do
  it { should be_file }
end

describe command('/usr/local/bin/cmake --version') do
  its(:stdout) { should match /cmake version \d+.\d+.\d+/ }
end
