" In MacVim the user vimrc is setted in 
"/Applications/MacVim.app/Contents/Resources/vim/gvimrc


" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
  "syntax off
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

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

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" to save read only file 
cnoremap sudow w !sudo tee % > /dev/null

" show line number
:set number

" Set tabstop to tell vim how many columns a tab counts for.
" set each tab to 4 column
:set tabstop=4

" Set shiftwidth to control how many columns text is indented 
" indent size
:set shiftwidth=4

" when insert new tab, it will replace to space 
" When expandtab is set, hitting Tab in insert mode will produce the appropriate number of spaces.
:set expandtab

" replace all tab to space
":retab

" when I edit makefile, vim will not use space to replace tab
autocmd FileType make setlocal noexpandtab

" always keep at least 7 lines visible 
:set scrolloff=20

" show current line
:set cursorline

" show status in bottom right
:set ruler

"search ignore case
:set ic

" set enable 256 color
:set t_Co=256 

" set line number color
highlight LineNr ctermfg=DarkGrey

" set mouse mode
":set mouse=a

" set file encoding
:set fileencoding=utf-8

" To turn off autoindent when you paste code
":set paste

" set visual search
vnoremap // y/<C-R>"<CR>

" disable arrow key to make myself to use hjkl
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

