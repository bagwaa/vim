map <Leader>n :NERDTreeToggle<CR>
map <Leader>1 :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeWinSize=40
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git$','\.svn','\.idea$',
    \ '\.bzr','\.DS_Store','\.sass-cache','\.vagrant']
let NERDTreeQuitOnOpen=1
let NERDTreeDirArrows=1
let NERDTreeKeepTreeInNewTab=1
let NERDTreeHijackNetrw = 0
nnoremap <silent> <Leader>sd :NERDTreeFind<CR>

