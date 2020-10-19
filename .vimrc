call pathogen#infect()

syntax on
filetype plugin indent on

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set splitright
set splitbelow
set number
set expandtab
set tabstop=4
set mouse=a

set background=dark
colorscheme apprentice
let &t_ut=''
