directory "/home/ec2-user/workspace" do
  owner "ec2-user"
  group "ec2-user"
  action :create
end

git "/home/ec2-user/workspace/bootstrap_dev" do
  repository "https://github.com/natb1/bootstrap_dev.git"
  user "ec2-user"
  group "ec2-user"
end
