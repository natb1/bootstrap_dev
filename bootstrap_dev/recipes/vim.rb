template "/home/ec2-user/.vimrc" do
  source "vimrc.erb"
  owner "ec2-user"
  group "ec2-user"
end

%w[ /home/ec2-user/.vim/autoload /home/ec2-user/.vim/bundle ].each do |path|
  directory path do
    owner "ec2-user"
    group "ec2-user"
    recursive true
    action :create
  end
end

remote_file "/home/ec2-user/.vim/autoload/pathogen.vim" do
  source "https://tpo.pe/pathogen.vim"
  owner "ec2-user"
  group "ec2-user"
end

git "/home/ec2-user/.vim/bundle/vim-colors-solarized" do
  repository "git://github.com/altercation/vim-colors-solarized.git"
  user "ec2-user"
  group "ec2-user"
end

