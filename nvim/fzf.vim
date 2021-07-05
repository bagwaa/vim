" Set FZF to ignore some files
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --ignore-file=~/.rgignore --files --hidden"

" FZF Settings and Shortcuts
nmap <C-p> :Files<CR>
nmap <C-g> :GFiles<CR>
nmap <leader>bb :Buffers<CR>
nmap <leader>ff :Rg<CR>
map <leader>m :BLines<CR>

" show the most recently used files
" nmap <silent> <leader><Space> :History<CR>
