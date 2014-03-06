```
mkdir ~/workspace
git clone https://github.com/natb1/dotfiles.git ~/workspace/dotfiles
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
mv ~/.bashrc ~/.bashrc.temp && cat ~/workspace/dotfiles/bashrc.sh ~/.bashrc.temp > ~/.bashrc && rm ~/.bashrc.temp
ln -s ~/workspace/dotfiles/vimrc.vim ~/.vimrc
vim +BundleInstall +qall
```
