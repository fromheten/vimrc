set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Statusline
Plugin 'bling/vim-airline' 

Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-scripts/closetag.vim'
Plugin 'scrooloose/syntastic'
" Plugin 'groenewege/vim-less'
Plugin 'vim-scripts/endline'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'
Plugin 'dag/vim-fish'

Plugin 'vim-scripts/gitignore'

Plugin 'tpope/vim-rails'

Plugin 'marijnh/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'ervandew/supertab'

" CSS colors
Plugin 'skammer/vim-css-color'

"Snipmate things
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'http://github.com/honza/vim-snippets.git'
Plugin 'saada/reactjs-snippets'


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
" Load settings from the 'settings' directory
for f in split(glob('~/.vim/settings/*.vim'), '\n')
    exe 'source' f
endfor

" Reaload this file
nnoremap <Leader>s :source ~/.vim/vimrc<Cr>
syntax on

"As long as $SHELL is fish, this is needed
if &shell =~# 'fish$'
  set shell=sh
endif

" In input mode, C-e goes to end of line
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>0i

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

"Line numbers
set number
nnoremap <Leader>l :setlocal number!<Cr>

" Things that look and feel
set ttyfast

set mouse=a

set scrolloff=3

" CTRL-P settings that also apply to the rest of vim
set wildignore+=*/tmp/*,*/node_modules/*

"Default crypto is blowfish, dont change!
if has("cm")
  setlocal cryptomethod=blowfish2
endif

set hidden " Allows buffers to exist without a window. It's a good thing

" Indentation & Tabulation
set tabstop=2
set expandtab
set shiftwidth=4
set smarttab

set backspace=indent,eol,start

" Search settings
set incsearch
set ignorecase
set smartcase
set hlsearch
nnoremap <Leader>q :nohlsearch<CR>

"No thanks, I don't need no swap
set noswapfile
set nobackup
set nowb

set undodir=~/.vim/undodir
set undofile
" set undolevel=1000
set undoreload=10000


" Endline script config
let g:Endlines = {
  \'erlang': '.',
  \'java': ';',
  \'javascript': ';',
  \'ocaml': ';;',
  \'perl': ';',
  \'php': ';',
  \'python': ':',
  \'sml': ';'
\}

" My terminal has many colors
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif
