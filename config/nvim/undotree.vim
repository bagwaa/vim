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
