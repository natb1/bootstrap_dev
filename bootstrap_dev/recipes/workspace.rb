directory "/home/ec2-user/workspace" do
  owner "ec2-user"
  group "ec2-user"
  action :create
end

node[:workspace][:repositories].each do |name, url|
  git name do
    repository url
    user "ec2-user"
    group "ec2-user"
  end
end
