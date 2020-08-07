source ~/.vim/config/general.vim
source ~/.vim/config/theme.vim
source ~/.vim/config/php.vim
source ~/.vim/config/coc-explorer.vim
source ~/.vim/config/startify.vim
source ~/.vim/config/git.vim
source ~/.vim/config/undo.vim
source ~/.vim/config/closetag.vim
source ~/.vim/config/buffer.vim
source ~/.vim/config/search.vim
source ~/.vim/config/coc.vim
source ~/.vim/config/snippets.vim

call plug#begin('~/.vim/plugged')
" Theme based plugins
Plug 'vim-airline/vim-airline'                                      " the one and only
Plug 'vim-airline/vim-airline-themes'                               " a selection of airline themes
Plug 'ryanoasis/vim-devicons'                                       " a selection of icons in nerdtree

" Syntax based plugins
Plug 'sheerun/vim-polyglot'                                         " syntax highlighting for tonnes of languages

" Project navigation based plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   " fuzzy search
Plug 'junegunn/fzf.vim'                                             " fuzzy search
Plug 'jeetsukumaran/vim-buffergator'                                " manage buffers
Plug 'rbgrouleff/bclose.vim'                                        " close buffers easily
Plug 'mhinz/vim-startify'                                           " show recent files on start up
Plug 'kshenoy/vim-signature'                                        " show marks in the gutter that we can jump to

" Git based plugins
Plug 'airblade/vim-gitgutter'                                       " git changes in the gutter
Plug 'tpope/vim-fugitive'                                           " git commands in vim
Plug 'whiteinge/diffconflicts'                                      " fix git conflicts easy

" Editing based plugins
Plug 'terryma/vim-multiple-cursors'                                 " show multiple cursors
Plug 'tpope/vim-sleuth'                                             " smart indenting in files
Plug 'tpope/vim-surround'                                           " change the surrounding brackets
Plug 'mattn/emmet-vim'                                              " emmet implementation for vim
Plug 'tpope/vim-commentary'                                         " block commenting
Plug 'mbbill/undotree'                                              " manage recent changes to a file in memory
Plug 'junegunn/vim-peekaboo'                                        " show contents of registers
Plug 'jiangmiao/auto-pairs'                                         " auto open and close pairs
Plug 'SirVer/ultisnips'                                             " snippets manager

" Completion based plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}                     " code completion
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php'}                     " keep PHP pretty
call plug#end()
