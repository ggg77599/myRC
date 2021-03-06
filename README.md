# Rearrange this project to dotfiles
* vim note converge with evernote
* write the two version of install script, one is shell script and the other is makefile
* need a minimal version of my environment
* arrange all vim file type audo open
* arrange all vim key mapping
* arrange all color setting
* different type of installation
    * general(advence + vim(all))
    * docker(basic + vim(simple))

# My RC file

Include bashrc, vimrc, sqliterc, tmux.comf

## Install
* install basic config
`sh install.sh`
* install vim plugin
`sh installVim.sh`
* install vim plugin with ycm
`sh installVim.sh ycm`


## VIM Note
* **turn off highlighting**
`:noh`
* **replace**
`range``s``/``string(source)``/``string(destination)``/``control`
`%s/ABC/abc/c`
* **Install Plugin**
`vim +PluginInstall +qall`
or
`:PluginInstall`
* **Update Plugin**
`vim +PluginUpdate +qall`
or
`:PluginUpdate`
* **Compile YouCompleteMe**
`sudo apt-get install build-essential cmake`
`sudo apt-get install python-dev`
`git submodule update --init --recursive`
`cd ~/.vim/bundle/YouCompleteMe`
`./install.py --clang-completer`

* Setting snippet
`vim .vim/bundle/vim-snippets/snippets/`

## Reference
<https://github.com/VundleVim/Vundle.vim>
<https://github.com/aperezdc/vim-template>
<https://github.com/Valloric/YouCompleteMe>

<http://vim-scripts.org/index.html>

<http://softsmith.blogspot.tw/2008/12/vim-tab.html>
<http://softsmith.blogspot.tw/2013/03/vim-tab.html>

## tmux reference
<https://github.com/gpakosz/.tmux>
