call plug#begin('~/.vim/plugged')
" Tim Pope
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-vinegar'

" Theming stuff
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ayu-theme/ayu-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'

" Treesitter for better highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Autopairs enabled
Plug 'jiangmiao/auto-pairs'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Registers
Plug 'junegunn/vim-peekaboo'

" Highlight what we yank
Plug 'machakann/vim-highlightedyank'

" WhichKey
Plug 'liuchengxu/vim-which-key'

" Show git stuff in the gutter
Plug 'airblade/vim-gitgutter'

" Enable Git in Vim
Plug 'tpope/vim-fugitive'

" Code Completetion and Explorer
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Linting
Plug 'dense-analysis/ale'

" Startify
Plug 'mhinz/vim-startify'

" Diff Conflicts
Plug 'whiteinge/diffconflicts'

" Undo Options
Plug 'mbbill/undotree'

call plug#end()

" enable all features on neovim and vim
set nocompatible

" detect file type
filetype plugin on

" set a leader
let mapleader=","

" enable a full suite of rich colours
set termguicolors

" enable syntax highlighting
syntax on

" show line numbers
set number
set relativenumber

" scroll before we hit the top or bottom
set scrolloff=8

" set an amazing colour scheme
colorscheme ayu

" store load of commands in the history
set history=500

" set what character to use with vertical splits
set fillchars+=vert:│

" show a line where 120 characters is when editing
set colorcolumn=120

" reload file if it changes outside of vim
set autoread

" silly bell
set visualbell
set t_vb=

" no wrapping
set nowrap

" show whitespace characters
set list

" replace any tabs with spaces because we are not psychos
set expandtab

" set the default tab spacing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent

" set split strategy
set splitbelow
set splitright

" no backups
set nobackup
set noswapfile
set nowritebackup

" hide abandoned buffers, meaning if we have unsaved changes in a buffer we
" can open another one without being forced to save.
set hidden

" show the sign column for things like git
set signcolumn=yes

" ignore some files and folders that we will just never edit
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/vendor/*,*/storage/*,*/cache/*,*/node_modules/*,*/bower_components/*

" remove gutter/numbers background colour
highlight LineNr cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight clear SignColumn
highlight SignColumn ctermbg=NONE

" set some sensible tab colours
highlight TabLineFill cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight TabLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
highlight TabLineSel ctermfg=Black ctermbg=Yellow

" remap jj as shortcut to get out of insert mode
imap jj <Esc>

" insert mode, press CTRL-A to jump to the end of the line and stay in insert mode
inoremap <C-a> <C-o>$

" disable the evil arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" map Ctrl+HJKL to move between splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" create vertical splits with <leader>v
nmap <leader>v :vnew<CR>

" create horizontal splits with <leader>h
nmap <leader>h :sp<CR>

" save files with <leader>s
nmap <leader>s :w<CR>

" jump to the config file for vim
nmap <leader><leader>v :e ~/.vimrc<CR>

" close buffer
nmap <leader>x :bd<CR>

" next buffer
nmap <leader>bn :bn<CR>

" previous buffer
nmap <leader>bn :bn<CR>

" set custom vim config filetype
autocmd BufNewFile,BufRead .vim.custom set ft=vim

" remove all end of line whitespace in the buffer on save
autocmd BufWritePre * :%s/\s\+$//e

" when opening blade files set type to html
autocmd BufNewFile,BufRead *.blade.php set ft=html

" Airline Theme
let g:airline_theme='dark'

" Peekaboo / Register Settings
let g:peekaboo_window = 'vertical botright 80new'

" Highlighted Yank
let g:highlightedyank_highlight_duration = 250

" enable the git gutter so we can see changes
let g:gitgutter_enabled = 1

" Update time
set updatetime=100

" set some sensible colours for git in the gutter
highlight GitGutterAdd ctermfg=Green
highlight GitGutterDelete ctermfg=Red
highlight GitGutterChange ctermfg=Yellow

source ~/.config/nvim/ale.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/startify.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/fugitive.vim
source ~/.config/nvim/undotree.vim
source ~/.config/nvim/whichkey.vim
