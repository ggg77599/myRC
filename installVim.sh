

if [ -d ~/.vim/bundle ]; then
    echo ~/.vim/bundle exist !

    vim +PluginInstall +qall
    echo update DONE

    exit 0

fi

# copy vimrc to ~/.vimrc
cp vimrc ~/.vimrc

# install vim vundle
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

if [ $1 = "ycm" ];
then

    echo install YCM

    sed -i -e 's/\"Plugin/Plugin/g' ~/.vimrc

    # copy C-family Semantic Completion Engine
    wget https://raw.githubusercontent.com/Valloric/ycmd/master/cpp/ycm/.ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
    
fi

# install vim plugin
vim +PluginInstall +qall
echo Install DONE

if [ $1 = "ycm" ];
then
    # compile YCM
    cd ~/.vim/bundle/YouCompleteMe
    ./install.py
fi


