set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'Townk/vim-autoclose'
" Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
" Plugin 'groenewege/vim-less'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'dag/vim-fish'

Plugin 'tpope/vim-rails'

Plugin 'marijnh/tern_for_vim'
" Plugin 'Valloric/YouCompleteMe'

"Snipmate things
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
" Optional:
"Bundle "honza/vim-snippets""


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
"
" ========== MY VIMRC ===========
syntax on

"As long as $SHELL is fish, this is needed
if &shell =~# 'fish$'
  set shell=sh
endif

" Let CTRLP ignore things in .gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"Map some things
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
nnoremap <leader>w :w<cr>
nnoremap <leader>e :e<space>
nnoremap <leader>x :x<cr>
nnoremap yy Y
nnoremap Y y$

" Things that look and feel
set ttyfast

set scrolloff=3

" CTRL-P settings that also apply to the rest of vim
set wildignore+=*/tmp/*,*/node_modules/*

"Default crypto is blowfish, dont change!
if has("cm")
  setlocal cryptomethod=blowfish2
endif

set hidden " Allows buffers to exist without a window. It's a good thing

"No thanks, I don't need no swap
set noswapfile
set nobackup
set nowb

set undodir=~/.vim/undodir
set undofile
" set undolevel=1000
set undoreload=10000

" vim-javascript settings
set javascript_enable_domhtmlcss
