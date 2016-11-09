# My RC file

Include bashrc, vimrc, sqliterc, tmux.comf

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
