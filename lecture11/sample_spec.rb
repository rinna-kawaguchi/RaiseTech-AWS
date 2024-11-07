require 'spec_helper'

# Nginxがインストールされていること
describe package('nginx') do
  it { should be_installed }
end

# Nginxが起動しており、自動起動設定されていること
describe service('nginx') do
  it { should be_running }
  it { should be_enabled }
end

# 80番ポートでリッスンしていること
describe port(80) do
  it { should be_listening }
end

# curlでd接続してステータスコード200が返ること
describe command('curl http://10.0.0.9 -o /dev/null -w "%{http_code}" -s') do
  its(:stdout) { should match /^200$/ }
end
