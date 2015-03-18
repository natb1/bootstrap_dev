directory "/home/#{node[:ssh][:user]}/.ssh" do
  owner "#{node[:ssh][:user]}"
  group "#{node[:ssh][:user]}"
  mode "0700"
  action :create
end

if node[:ssh][:id_rsa]
  file "/home/#{node[:ssh][:user]}/.ssh/id_rsa" do
    owner "#{node[:ssh][:user]}"
    group "#{node[:ssh][:user]}"
    mode "0400"
    content node[:ssh][:id_rsa]
    action :create
  end
end

template "/home/#{node[:ssh][:user]}/.ssh/config" do
  source "ssh_config.erb"
  owner "#{node[:ssh][:user]}"
  group "#{node[:ssh][:user]}"
end
