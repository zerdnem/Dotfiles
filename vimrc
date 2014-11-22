filetype plugin indent on
syntax on
set number
imap jk <Esc>
let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>
nmap ; :
cmap w!! w !sudo tee % > /dev/null
set wildmenu
set foldenable
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
