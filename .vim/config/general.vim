filetype plugin indent on
syntax on
set number
set hidden
set nowrap
filetype on
set nobackup
set hlsearch
set tabstop=4
set autowrite
set expandtab
set incsearch
set splitbelow
set copyindent
set noswapfile
set splitright
set cmdheight=1
set smartindent
set nocompatible
set linespace=30
set shiftwidth=4
set shortmess+=c
let mapleader=","
set softtabstop=4
set preserveindent
set signcolumn=yes
set updatetime=100
let g:peekaboo_window = 'vertical botright 80new'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/vendor/*,*/storage/*,*/cache/*,*/node_modules/*,*/bower_components/*
let g:highlightedyank_highlight_duration = 350

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" when in insert mode, pressing CTRL-A will put me in insert mode at the end
" of the line.
inoremap <C-a> <C-o>$
imap jj <Esc>
nmap <leader>l :set list!<CR>
nmap <Leader><Leader>v :e ~/.vimrc<cr>
nmap <Leader>v :vnew<cr>
nmap <leader>s :w<cr>
nmap <leader>g :G<CR>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
imap <C-Space> <C-X><C-O>
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
