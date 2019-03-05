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

## update apt-get
sudo apt-get update -y
#sudo apt-get upgrade -y
#sudo apt-get dist-upgrade -y

sudo apt-get install build-essential -y
sudo apt-get install curl -y
#sudo apt-get install python-minimal -y   # python 2
#sudo apt-get install python-dev -y       # python 2 dev
sudo apt-get install python3-dev -y      # python 3 dev

# install pip for python 2 and 3
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
#sudo -H python get-pip.py
sudo -H python3 get-pip.py

# vimrc essential
sudo apt-get install cmake -y
sudo apt-get install exuberant-ctags -y
sudo apt-get install vim -y
sudo apt-get install ssh -y
sudo apt-get install git -y
sudo apt-get install tmux -y

#sudo apt-get install nmap -y
#sudo apt-get install gcc-multilib -y 
#sudo apt-get install g++-multilib -y

## install git lfs
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
git lfs install

## setup git config
version=`git --version | awk '{print $3}'`
wget "https://raw.githubusercontent.com/git/git/v"$version"/contrib/completion/git-completion.bash" -O ~/.git-completion.bash 
wget "https://raw.githubusercontent.com/git/git/v"$version"/contrib/completion/git-prompt.sh"       -O ~/.git-prompt.sh

cp gitconfig ~/.gitconfig

## setup pip config
mkdir -p ~/.pip/
cp pip.conf ~/.pip/

## setup tmux config
cp tmux.conf ~/.tmux.conf

## install pip packages
#sudo -H pip2 install virtualenv
#sudo -H pip2 install grip
#sudo -H pip3 install virtualenv
#sudo -H pip3 install grip


