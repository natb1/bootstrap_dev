...dotfiles and scripts for bootstrapping a home environment.

```shell
mkdir ~/workspace
git clone https://github.com/natb1/dotfiles.git ~/workspace/dotfiles
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
mv ~/.bashrc ~/.bashrc.temp && cat ~/workspace/dotfiles/bashrc.sh ~/.bashrc.temp > ~/.bashrc && rm ~/.bashrc.temp
ln -s ~/workspace/dotfiles/vimrc.vim ~/.vimrc
ln -s ~/workspace/dotfiles/tmux.conf ~/.tmux.conf
vim +BundleInstall +qall
git config --global user.email "nathan@natb1.com"
git config --global user.name "Nathan Buesgens"
```

## TODO: 
- bootstrap script
