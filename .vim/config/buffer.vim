let g:buffergator_suppress_keymaps=1
let g:buffergator_viewport_split_policy="B"
let g:buffergator_hsplit_size=10
let g:buffergator_sort_regime="mru"

nmap <leader>bb :BuffergatorToggle<CR>
nmap <leader>x :Bclose<CR>
nmap <leader>bn :bn<CR>
" Remove all whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.blade.php set ft=html
autocmd BufNewFile,BufRead *.vue set ft=vue"
