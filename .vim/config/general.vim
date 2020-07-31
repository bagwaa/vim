filetype plugin indent on
set nocompatible
filetype on
syntax on
set hidden
set linespace=30
set signcolumn=yes
set hlsearch
set incsearch
set copyindent
set preserveindent
set number
set autowrite
set nowrap
set noswapfile
set nobackup
set tabstop=4
set smartindent
set softtabstop=4
set shiftwidth=4
set expandtab
set splitbelow
set splitright
set updatetime=100
set cmdheight=1
set shortmess+=c
let g:peekaboo_window = 'vertical botright 80new'
let mapleader=","
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/vendor/*,*/storage/*,*/cache/*,*/node_modules/*,*/bower_components/*

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
imap jj <Esc>
nmap <leader>l :set list!<CR>
nmap <Leader>v :e ~/.vimrc<cr>
nmap <leader>s :w<cr>
nmap <leader>sn :set invnumber<CR>
nmap <leader>srn :set invrelativenumber<CR>
nmap <leader>g :G<CR>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
imap <C-Space> <C-X><C-O>
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
nnoremap <silent> <Leader>gb :e#<CR>
