set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'kevinhui/vim-docker-tools'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'tpope/vim-commentary'
Plugin 'Yggdroot/indentLine'
Plugin 'elzr/vim-json'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mhartington/oceanic-next'
Plugin 'wadackel/vim-dogrun'
"Plugin 'ryanoasis/vim-devicons' " Must be last

call vundle#end()
filetype plugin indent on

" General
set noshowmode
set noswapfile
set title
set ttyfast
let mapleader=','
set binary

" Backup
set nobackup
set noswapfile

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set bomb

" Indentation
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set smarttab
set autoindent
set smartindent
set nowrap
set nolinebreak

" GUI
syntax on
set number
set lazyredraw
set termguicolors
set laststatus=2
set list listchars=trail:·

" Mappings
inoremap <C-z> <Esc>ui
nnoremap <C-z> i
inoremap <C-y> <Esc><C-r>i
nnoremap <C-v> pi<Right>
vnoremap <C-c> <Left>y
noremap <C-Right> <S-Right>
inoremap <C-s> <Esc>:w<CR>i
vnoremap <<> <gvolloll
vnoremap <Tab> >gvolloll

" Commands
command C let @/=""

" Buffers
noremap <leader>w :bd<CR>
nnoremap <Leader>1 :b1<CR>
nnoremap <Leader>2 :b2<CR>
nnoremap <Leader>3 :b3<CR>
nnoremap <Leader>4 :b4<CR>
nnoremap <Leader>5 :b5<CR>
nnoremap <Leader>6 :b6<CR>
nnoremap <Leader>7 :b7<CR>
nnoremap <Leader>9 :b9<CR>

" Theme
set background=dark
colorscheme dogrun
let g:airline_theme = "deus"
let g:airline#extensions#tabline#enabled=1

" Search
set showmatch
set incsearch
set smartcase
set ignorecase
set hlsearch

" Folds
set nofoldenable
set foldlevelstart=10
nnoremap <space> za
set foldmethod=indent

" GitGutter
set updatetime=100

" NERDTree
noremap <C-b> :NERDTreeToggle<CR>

" Docker tools
noremap <F3> :DockerToolsToggle<CR>

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'
let g:indentLine_color_term = 255
let g:indentLine_color_gui = '#4b5063' " Based on palenight theme color
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_first_char = '▏'

let g:LargeFile = 1024 * 1024 * 8
augroup LargeFile 
  au!
  autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > g:LargeFile || f == -2 | call LargeFile() | endif
augroup END

function! LargeFile()
  syntax off
  setlocal bufhidden=unload
  setlocal undolevels=-1
  autocmd VimEnter * echo "Large file! (>" . (g:LargeFile / 1024 / 1024) . " MB). Some features are disabled."
endfunction

