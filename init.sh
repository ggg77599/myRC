## -------------------------------------------- set bashrc
cat bashrc >> ~/.bashrc

mkdir -p ~/.pip/
cp pip.conf ~/.pip/

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash 
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh       -O ~/.git-prompt.sh

sudo apt-get update -y
#sudo apt-get upgrade -y

#sudo apt-get dist-upgrade -y

sudo apt-get install build-essential -y

sudo apt-get install python-dev -y
sudo apt-get install python-pip -y

sudo apt-get install vim -y

#sudo apt-get install openssh-server -y

sudo apt-get install git -y

#sudo apt-get install gcc-multilib -y 
#sudo apt-get install g++-multilib -y

sudo apt-get install tmux -y

#sudo apt-get install nmap -y

sudo apt-get install exuberant-ctags -y

#sudo pip install requests
#sudo pip install virtualenv
#sudo pip install requests
#sudo pip install grip

# fix python locale 
export LC_ALL="en_US.UTF-8"
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8


