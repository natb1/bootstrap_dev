template "/home/ec2-user/.gitconfig" do
  source "gitconfig.erb"
  owner "ec2-user"
  group "ec2-user"
end
