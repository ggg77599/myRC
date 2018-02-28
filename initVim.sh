# fix locale 
export LC_ALL="en_US.UTF-8"
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

# install required packages
sudo apt-get update
sudo apt-get install vim -y
sudo apt-get install git -y
sudo apt-get install python-dev -y
sudo apt-get install python-pip -y
sudo apt-get install cmake -y
sudo apt-get install exuberant-ctags -y

# copy vimrc to ~/.vimrc
cp vimrc ~/.vimrc
cp vimdiffrc ~/.vimdiffrc

# install vim vundle
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install vim plugin
vim +PluginInstall +qall

# copy C-family Semantic Completion Engine
wget https://raw.githubusercontent.com/Valloric/ycmd/master/cpp/ycm/.ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

# compile YCM
cd ~/.vim/bundle/YouCompleteMe
./install.py
