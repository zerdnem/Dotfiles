imap jk <Esc>
let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>
nmap ; :
cmap w!! w !sudo tee % > /dev/null
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
set laststatus=0
set showmode
set showcmd
set nobackup
set nowritebackup
set noswapfile
set directory=/tmp
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap n nzz
nnoremap N Nzz

