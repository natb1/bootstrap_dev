directory "/home/ec2-user/.ssh" do
  owner "ec2-user"
  group "ec2-user"
  mode "0700"
  action :create
end

if node[:ssh][:id_rsa]
  file "/home/ec2-user/.ssh/id_rsa" do
    owner "ec2-user"
    group "ec2-user"
    mode "0400"
    content node[:ssh][:id_rsa]
    action :create
  end
end

template "/home/ec2-user/.ssh/config" do
  source "ssh_config.erb"
  owner "ec2-user"
  group "ec2-user"
end
