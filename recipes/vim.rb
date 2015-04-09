package 'vim'

if node[:deploy][:user]

  template "/home/#{node[:deploy][:user]}/.vimrc" do
    source "vimrc.erb"
    owner node[:deploy][:user]
    group node[:deploy][:user]
  end
  
  [
    "/home/#{node[:deploy][:user]}/.vim/autoload",
    "/home/#{node[:deploy][:user]}/.vim/bundle"
  ].each do |path|
    directory path do
      owner node[:deploy][:user]
      group node[:deploy][:user]
      recursive true
      action :create
    end
  end
  
  remote_file "/home/#{node[:deploy][:user]}/.vim/autoload/pathogen.vim" do
    source "https://tpo.pe/pathogen.vim"
    owner node[:deploy][:user]
    group node[:deploy][:user]
  end
  
  git "/home/#{node[:deploy][:user]}/.vim/bundle/vim-colors-solarized" do
    repository "git://github.com/altercation/vim-colors-solarized.git"
    user node[:deploy][:user]
    group node[:deploy][:user]
  end
  
  git "/home/#{node[:deploy][:user]}/.vim/bundle/vim-javascript" do
    repository "git://github.com/pangloss/vim-javascript.git"
    user node[:deploy][:user]
    group node[:deploy][:user]
  end

end
