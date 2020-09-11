"  _
" | |__ __ _ __ ___ __ ____ _ __ _
" | '_ / _` / _` \ V  V / _` / _` |
" |_.__\__,_\__, |\_/\_/\__,_\__,_|
"           |___/
"
" Auto install any new plugins and source the vimrc
" autocmd VimEnter * PlugInstall | source $MYVIMRC

" ==============================================================
" General Settings
" ==============================================================

" Make sure Vim features are enabled first
set nocompatible

" detect the filetype
filetype on

" syntax highlighting on
syntax on

" show line number(s)
set number

" show relative line numbers to the current line
set relativenumber

" store loads of command mode history
set history=500

" reload file if it changes outside of vim
set autoread

" replace that silly bell
set visualbell

" make the visual bell do nothing (so it's not annoying)
set t_vb=

" don't display wrapping lines by default
set nowrap

" display sign column so we can see git gutter
set signcolumn=yes

" show hidden characters such as spaces on the end of lines
set list

" set the line height for the fonts
set linespace=30

" settings for indenting and tabs
set preserveindent
set softtabstop=4
set shiftwidth=4
set smartindent
set copyindent
set tabstop=4
set expandtab

" split managment
set splitbelow
set splitright

" automatically write files
set autowrite

" ignore some files and folders that we will just never edit
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/vendor/*,*/storage/*,*/cache/*,*/node_modules/*,*/bower_components/*

" set a leader key
let mapleader=","

" enable incremental search and highlighting
set hlsearch
set incsearch

" hide abandoned buffers, meaning if we have unsaved changes in a buffer we
" can open another one without being forced to save.
set hidden

" no backups or swap files
set nobackup
set noswapfile

" set the height of the command prompt in lines
set cmdheight=1

" time in ms before CursorHold
set updatetime=100

" not really sure if I need this, reduce the hit enter prompts
set shortmess+=c

" ==============================================================
" Theme Based Settings
" ==============================================================

" set the default color scheme (must be in the colors dir)
colorscheme monokai

" make the vertical line between splits less obscene
highlight VertSplit ctermbg=NONE ctermfg=black guibg=NONE

" remove all background colors from the line numbers in the gutter
highlight LineNr cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

" make sure the gutter signs are always on dark / clear background
highlight clear SignColumn
highlight SignColumn ctermbg=NONE

" set what character to use with vertical splits
set fillchars+=vert:│

" show a line where 120 characters is when editing, helpful to maintain PSR
" standards in PHP
set colorcolumn=120

" ==============================================================
" General Key Mappings
" ==============================================================

" use jj to quickly jump out of insert mode back to normal (instead of escape)
imap jj <Esc>

" disable the arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" allow CTRL H/J/K/L to move between splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" create a new vertical split
nmap <Leader>v :vnew<cr>

" save the file
nmap <leader>s :w<cr>

" jump to the vim configuration file (here!)
nmap <Leader><Leader>v :e ~/.vimrc<cr>

" insert mode, press CTRL-A to jump to the end of the line and stay in insert
" mode
inoremap <C-a> <C-o>$

" ==============================================================
" Vim Fugitive (Git)
" ==============================================================

" enable the git gutter so we can see changes
let g:gitgutter_enabled = 1

" set some sensible colours for git in the gutter
highlight GitGutterAdd ctermfg=Green
highlight GitGutterDelete ctermfg=Red
highlight GitGutterChange ctermfg=Yellow

" set <leader> g to open a git status in a git repository
nmap <leader>g :G<CR>

" ==============================================================
" Highlighted Yank
" ==============================================================

" time in ms we want to flash the yanked area
let g:highlightedyank_highlight_duration = 250

" ==============================================================
" Vim Peekaboo (press " to view all registers)
" ==============================================================

" visual configuration for the peekaboo window
let g:peekaboo_window = 'vertical botright 80new'

" ==============================================================
" Airline Settings
" ==============================================================

" set the airline bar to the dark version of the theme
let g:airline_theme='dark'

" ==============================================================
" Ale Settings (Linting and Fixing)
" ==============================================================

" location of linters and fixers
let g:ale_php_phpcs_executable='/Users/bagwaa/.composer/vendor/bin/phpcs'
let g:ale_php_php_cs_fixer_executable='/Users/bagwaa/.composer/vendor/bin/php-cs-fixer'

" clear the background in the gutter for the linting icons
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" gutter icons for when there are linting issues to resolve
let g:ale_sign_error = '🤮'
let g:ale_sign_style_error = '🤮'
let g:ale_sign_warning = '🤮'
let g:ale_sign_style_warning = '🤮'

" set the PHP standard to use for linting and fixing
let g:ale_php_phpcs_standard = 'PSR2'

" set the linters we want to use in ale
let g:ale_linters = {
  \ 'php': ['php', 'phpcs', 'phpmd'],
  \ }

" set the fixers we want to use in ale
let g:ale_fixers = {
  \ 'php': ['php_cs_fixer'],
  \ }

" when entering a PHP buffer, if we have a .php_cs file then enable fix on
" save
augroup fix_on_save
  autocmd! *
  autocmd BufEnter *.php call s:fix_php()
augroup END

function! s:fix_php()
  if filereadable('.php_cs')
    let b:ale_fix_on_save = 1
  endif
endfunction

" ==============================================================
" Coc Explorer Settings (File Tree on the left)
" ==============================================================

" open the file tree using <leader>1
map <Leader>1 :CocCommand explorer<CR>

" use :CocConfig to see further configuration such as open current file in the
" tree etc

" ==============================================================
" Fzf Settings
" ==============================================================

" map Ctrl-P
map <C-p> :Files<cr>

" show the most recently used files
nmap <silent> <leader><Space> :History<CR>

" map a key for searching contents of an entire project
nnoremap <Leader>ff :Ag<CR>

" add fzf to the run time path
set rtp+=/usr/local/bin/fzf

" layout for fzf
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.5, 'yoffset': 1, 'border': 'top' } }

" ==============================================================
" Undo Settings
" ==============================================================

" enable an undo file
set undofile

" set the directory to store undo data
set undodir=~/.vim/undo

" map <leader>t to see a full history and points to undo file changes to
nnoremap <leader>t :UndotreeToggle<CR>

" focus on undotree when toggled on
let g:undotree_SetFocusWhenToggle=1

" set the split width for undotree
let g:undotree_SplitWidth=50

" ==============================================================
" Pear Tree Settings (Auto Close Tags)
" ==============================================================

" set the character which triggers the plugin
let g:closetag_shortcut = '>'

" set which files should be treated with tags
let g:closetag_filenames = '*.html,*.blade.php,*.php'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,blade,'

" plugin options to control how we open and close tags
let g:pear_tree_smart_openers=1
let g:pear_tree_smart_closers=1
let g:pear_tree_smart_backspace=1

" ==============================================================
" BufferGator and Buffer Settings
" ==============================================================

" toggle buffergator
nmap <leader>bb :BuffergatorToggle<CR>

" destroy a buffer
nmap <leader>x :bd<CR>

" next buffer
nmap <leader>bn :bn<CR>

" reload the current buffer from disk
nmap <leader>r :bufdo e!<CR>

" remove all end of line whitespace in the buffer on save
autocmd BufWritePre * :%s/\s\+$//e

" when opening json files set the filetype to javascript
autocmd BufNewFile,BufRead *.json set ft=javascript

" when opening blade files set the filetype to html
autocmd BufNewFile,BufRead *.blade.php set ft=html

" when opening vue files set the filetype to vue
autocmd BufNewFile,BufRead *.vue set ft=vue"

" buffergator visual layout and preference settings
let g:buffergator_suppress_keymaps=1
let g:buffergator_viewport_split_policy="B"
let g:buffergator_hsplit_size=10
let g:buffergator_sort_regime="mru"

" ==============================================================
" EasyMotion Settings
" ==============================================================

" disable autocompletion for a second whilst we throw a load of easy motion junk on the screen
let g:easymotion#is_active = 0
function! EasyMotionCoc() abort
  if EasyMotion#is_active()
    let g:easymotion#is_active = 1
    CocDisable
  else
    if g:easymotion#is_active == 1
      let g:easymotion#is_active = 0
      CocEnable
    endif
  endif
endfunction
autocmd TextChanged,CursorMoved * call EasyMotionCoc()

" ==============================================================
" Vim Coc
" ==============================================================

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>

" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>

" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>

" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>

" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>

" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>

" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>

" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" ==============================================================
" Plugins
" ==============================================================

call plug#begin('~/.vim/plugged')
" Theme based plugins
Plug 'vim-airline/vim-airline'                                      " the one and only
Plug 'vim-airline/vim-airline-themes'                               " a selection of airline themes
Plug 'ryanoasis/vim-devicons'                                       " a selection of icons in nerdtree

" Syntax based plugins
Plug 'sheerun/vim-polyglot'                                         " syntax highlighting for tonnes of languages
Plug 'tmsvg/pear-tree'                                              " autoclose tags when writing HTML
Plug 'machakann/vim-highlightedyank'                                " highlight the yanked area visually

" Project navigation based plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   " fuzzy search
Plug 'junegunn/fzf.vim'                                             " fuzzy search
Plug 'jeetsukumaran/vim-buffergator'                                " manage buffers
Plug 'rbgrouleff/bclose.vim'                                        " close buffers easily
Plug 'kshenoy/vim-signature'                                        " show marks in the gutter that we can jump to
Plug 'easymotion/vim-easymotion'                                    " jump around easily

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

" Debug
Plug 'vim-vdebug/vdebug'                                            " debugging with vim

" Completion based plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}                     " code completion
Plug 'dense-analysis/ale'                                           " linting
call plug#end()

