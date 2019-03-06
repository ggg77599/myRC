
## variables
myRC_HOME=`pwd`


## setup bashrc
if grep -q ". .bashrc.mrg" ~/.bashrc; then
  echo update myRC
else
  echo ". .bashrc.mrg" >> ~/.bashrc
  echo installing myRC 
fi

# copy bashrc
cp bashrc ~/.bashrc.mrg


## fix locale 
export LC_ALL="en_US.UTF-8"
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8


## apt-get
sudo apt-get update -y
#sudo apt-get upgrade -y
#sudo apt-get dist-upgrade -y

# utility
sudo apt-get install build-essential -y
sudo apt-get install curl -y
sudo apt-get install python3-dev -y      # python 3 dev
sudo apt-get install python3-distutils -y
sudo apt-get install ssh -y
sudo apt-get install git -y
sudo apt-get install tmux -y

# vimrc essential
sudo apt-get install cmake -y
sudo apt-get install exuberant-ctags -y
sudo apt-get install vim -y

#sudo apt-get install nmap -y
#sudo apt-get install gcc-multilib -y 
#sudo apt-get install g++-multilib -y


## setup git
# install git lfs
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
git lfs install


## git completion and prompt
version=`git --version | awk '{print $3}'`
wget "https://raw.githubusercontent.com/git/git/v"$version"/contrib/completion/git-completion.bash" -O ~/.git-completion.bash 
wget "https://raw.githubusercontent.com/git/git/v"$version"/contrib/completion/git-prompt.sh"       -O ~/.git-prompt.sh
cp gitconfig ~/.gitconfig


## setup tmux config
cp tmux.conf ~/.tmux.conf


## setup python
# install pip for python 3
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo -H python3 get-pip.py

# python symbolic link
cd /usr/bin/
sudo ln -s -f python3 python
cd $myRC_HOME

## setup pip
mkdir -p ~/.pip/
cp pip.conf ~/.pip/

# install pip packages
#sudo -H pip3 install virtualenv
#sudo -H pip3 install grip


## setup vim 
cp vimrc.mini ~/.vimrc

