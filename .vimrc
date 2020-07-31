source ~/.vim/config/general.vim
source ~/.vim/config/theme.vim
source ~/.vim/config/php.vim
source ~/.vim/config/coc-explorer.vim
source ~/.vim/config/startify.vim
source ~/.vim/config/git.vim
source ~/.vim/config/undo.vim
source ~/.vim/config/closetag.vim
source ~/.vim/config/ranger.vim
source ~/.vim/config/buffer.vim
source ~/.vim/config/search.vim
source ~/.vim/config/coc.vim
source ~/.vim/config/snippets.vim

call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'                                             " snippets manager
Plug 'junegunn/vim-peekaboo'                                        " show contents of registers
Plug 'terryma/vim-multiple-cursors'                                 " show multiple cursors
Plug 'tmsvg/pear-tree'                                              " auto close pairs intelligently
Plug 'kshenoy/vim-signature'                                        " show marks in the gutter that we can jump to
Plug 'vim-airline/vim-airline'                                      " the one and only
Plug 'rbgrouleff/bclose.vim'                                        " close buffers easily
Plug 'francoiscabrol/ranger.vim'                                    " file navigation for the system
Plug 'neoclide/coc.nvim', {'branch': 'release'}                     " code completion
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   " fuzzy search
Plug 'junegunn/fzf.vim'                                             " fuzzy search
Plug 'tpope/vim-fugitive'                                           " git commands in vim
Plug 'whiteinge/diffconflicts'                                      " fix git conflicts easy
Plug 'tpope/vim-surround'                                           " change the surrounding brackets
Plug 'tpope/vim-sleuth'                                             " smart indenting in files
Plug 'jwalton512/vim-blade'                                         " blade syntax
Plug 'mbbill/undotree'                                              " manage recent changes to a file in memory
Plug 'mhinz/vim-startify'                                           " show recent files on start up
Plug 'airblade/vim-gitgutter'                                       " git changes in the gutter
Plug 'jeetsukumaran/vim-buffergator'                                " manage buffers
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php'}                     " keep PHP pretty
Plug 'tpope/vim-commentary'                                         " block commenting
Plug 'pangloss/vim-javascript'                                      " javascript highlighting
Plug 'leafgarland/typescript-vim'                                   " typescript highlighting
Plug 'mxw/vim-jsx'                                                  " jsx highlighting
Plug 'posva/vim-vue'                                                " vue highlighting
Plug 'vim-airline/vim-airline-themes'                               " a selection of airline themes
Plug 'ryanoasis/vim-devicons'                                       " a selection of icons in nerdtree
Plug 'sheerun/vim-polyglot'                                         " syntax highlighting for tonnes of languages
Plug 'StanAngeloff/php.vim', {'for': 'php'}                         " php syntax
Plug 'mattn/emmet-vim'                                              " emmet implementation for vim
call plug#end()
