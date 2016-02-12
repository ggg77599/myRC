"--------------------------------------------------------- Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'aperezdc/vim-template'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"--------------------------------------------------------- Vundle

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
  "syntax off
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" autoindent
set autoindent

" show line number
set number

" Set tabstop to tell vim how many columns a tab counts for.
" set each tab to 4 column
set tabstop=4

" Set shiftwidth to control how many columns text is indented 
" indent size
set shiftwidth=4

" when insert new tab, it will replace to space 
" When expandtab is set, hitting Tab in insert mode will produce the appropriate number of spaces.
set expandtab

" when I edit makefile, vim will not use space to replace tab
autocmd FileType make setlocal noexpandtab

" always keep at least 7 lines visible 
set scrolloff=20

" show current line
set cursorline

" show status in bottom right
set ruler

" Search ignore case
" Do case insensitive matching
set ignorecase

" Do smart case matching
set smartcase

" Incremental search
set incsearch

" set enable 256 color
set t_Co=256 

" set line number color
highlight LineNr ctermfg=DarkGrey

" set file encoding
set fileencoding=utf-8

" set highlight search
set hlsearch

" set mode
set showmode

" Automatically save before commands like :next and :make
set autowrite		

" Show (partial) command in status line.
set showcmd		

"---------------------------------------------------  key mapping
" disable arrow key to make myself to use hjkl
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" set visual search
vnoremap // y/<C-R>"<CR>

" to save read only file 
cnoremap sudow w !sudo tee % > /dev/null

" turn off highlighting
nnoremap <F3> :noh<CR>

"inoremap ( ()<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
"inoremap [ []<Esc>i
"inoremap {<CR> {<CR>}<Esc>ko

"--------------------------------------------------

" To turn off autoindent when you paste code
"set paste

" set mouse mode
"set mouse=a

" replace all tab to space
":retab



