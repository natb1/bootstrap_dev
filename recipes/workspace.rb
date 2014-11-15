include_recipe "bootstrap_dev::ssh"

directory "/home/ec2-user/workspace" do
  owner "ec2-user"
  group "ec2-user"
  action :create
end

node[:workspace][:repositories].each do |name, url|
  git "/home/ec2-user/workspace/#{name}" do
    repository url
    user "ec2-user"
    group "ec2-user"
  end
end
