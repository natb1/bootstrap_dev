package "git" do
  action :install
end

if node[:deploy][:user]

  template "/home/#{node[:deploy][:user]}/.gitconfig" do
    source "gitconfig.erb"
    owner node[:deploy][:user]
    group node[:deploy][:user]
    mode "0400"
  end

end
