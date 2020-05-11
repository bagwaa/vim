source $HOME/.vim/config/general/settings.vim
source $HOME/.vim/config/general/keymaps.vim
source $HOME/.vim/config/general/buffers.vim
source $HOME/.vim/config/general/filetypes.vim
source $HOME/.vim/config/general/search.vim
source $HOME/.vim/config/completion/general.vim
source $HOME/.vim/config/completion/php.vim
source $HOME/.vim/config/completion/javascript.vim
source $HOME/.vim/config/plugins/git.vim
source $HOME/.vim/config/plugins/nerdtree.vim
source $HOME/.vim/config/plugins/startify.vim
source $HOME/.vim/config/plugins/undotree.vim

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'jwalton512/vim-blade'
Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'airblade/vim-gitgutter'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'phpactor/ncm2-phpactor'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'easymotion/vim-easymotion'
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php'}
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'ryanoasis/vim-devicons'
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'mattn/emmet-vim'
call plug#end()
