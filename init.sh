## -------------------------------------------- set bashrc
cat bashrc >> ~/.bashrc

# fix locale 
export LC_ALL="en_US.UTF-8"
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

## -------------------------------------------- install package
sudo apt-get update -y
#sudo apt-get upgrade -y
#sudo apt-get dist-upgrade -y

sudo apt-get install build-essential -y

sudo apt-get install python-dev -y
sudo apt-get install python-pip -y

sudo apt-get install cmake -y
sudo apt-get install exuberant-ctags -y
sudo apt-get install vim -y
sudo apt-get install ssh -y
sudo apt-get install git -y
sudo apt-get install tmux -y

#sudo apt-get install nmap -y
#sudo apt-get install gcc-multilib -y 
#sudo apt-get install g++-multilib -y

#sudo -H pip install virtualenv
#sudo -H pip install grip
#sudo -H pip install requests

## -------------------------------------------- install git lfs
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
git lfs install

## -------------------------------------------- setup git config
version=`git --version | awk '{print $3}'`
wget "https://raw.githubusercontent.com/git/git/v"$version"/contrib/completion/git-completion.bash" -O ~/.git-completion.bash 
wget "https://raw.githubusercontent.com/git/git/v"$version"/contrib/completion/git-prompt.sh"       -O ~/.git-prompt.sh

cp gitconfig ~/.gitconfig

## -------------------------------------------- setup pip config
mkdir -p ~/.pip/
cp pip.conf ~/.pip/

## -------------------------------------------- setup tmux config
cp tmux.conf ~/.tmux.conf


