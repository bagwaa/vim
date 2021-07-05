nnoremap <silent> <leader> :silent WhichKey ','<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual ','<CR>
let g:which_key_map =  {}

let g:which_key_sep = '→'

set timeoutlen=500

let g:which_key_use_floating_win = 0

" Single mappings
let g:which_key_map['1'] = [':CocCommand explorer --position=right', 'File Tree']
let g:which_key_map['ff'] = [':Rg', 'Find Text']
let g:which_key_map['gp'] = [':Gpush', 'Git Push']
let g:which_key_map['v'] = [':vnew', 'Vertical Split']
let g:which_key_map['h'] = [':sp', 'Horizontal Split']
let g:which_key_map['x'] = ['x', 'Close Buffer']
let g:which_key_map['t'] = [':UndotreeToggle', 'Open Undo History']
let g:which_key_map['s'] = ['w', 'Save']
let g:which_key_map['gb'] = [':Git blame', 'Git Blame']
let g:which_key_map['gs'] = [':Git', 'Git Status']
let g:which_key_map['m'] = [':BLines', 'Search by Lines']
let g:which_key_map['r'] = ['<Plug>(coc-rename)', 'Rename']
let g:which_key_map['ac'] = ['<Plug>(coc-codeaction)', 'Code Action Buffer']
let g:which_key_map['a'] = ['<Plug>(coc-codeaction-selected)', 'Code Action Selected']
let g:which_key_map['f'] = ['<Plug>(coc-format-selected)', 'Code Format Selected']
let g:which_key_map['g'] = 'which_key_ignore'
" let g:which_key_map['q'] = 'which_key_ignore'
let g:which_key_map['hp'] = 'which_key_ignore'

let g:which_key_map[','] = {
      \ 'name' : 'Vim Config Options' ,
      \ 'v' : [':e ~/.vimrc', 'Edit Vim Configuration'],
      \ }

let g:which_key_map['b'] = {
      \ 'name' : 'Buffers' ,
      \ 'b' : [':Buffers', 'List Buffers'],
      \ 'n' : [':bn', 'Next Buffer'],
      \ 'p' : [':bp', 'Previous Buffer'],
      \ }

let g:which_key_map['c'] = {
      \ 'name' : 'Coc' ,
      \ }

call which_key#register(',', "g:which_key_map")

