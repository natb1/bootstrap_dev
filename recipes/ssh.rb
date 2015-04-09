if node[:deploy][:user]

  directory "/home/#{node[:deploy][:user]}/.ssh" do
    owner "#{node[:deploy][:user]}"
    group "#{node[:deploy][:user]}"
    mode "0700"
    action :create
  end
  
  if node[:deploy][:key]
    file "/home/#{node[:deploy][:user]}/.ssh/id_rsa" do
      owner "#{node[:deploy][:user]}"
      group "#{node[:deploy][:user]}"
      mode "0400"
      content node[:deploy][:key]
      action :create
    end
  end
  
  template "/home/#{node[:deploy][:user]}/.ssh/config" do
    source "ssh_config.erb"
    owner "#{node[:deploy][:user]}"
    group "#{node[:deploy][:user]}"
  end

end
