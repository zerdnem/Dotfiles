syntax on
filetype plugin indent on
imap jk <Esc>
let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>
nmap ; :
cmap w!! w !sudo tee % > /dev/null
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set guioptions-=L
set guioptions-=r
set hlsearch incsearch
set ignorecase smartcase
set wildmenu
set showmatch
set ruler
set laststatus=0
set showmode
set showcmd
