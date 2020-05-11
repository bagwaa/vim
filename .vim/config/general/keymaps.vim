let mapleader=","

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

imap jj <Esc>

nmap <leader>l :set list!<CR>
nmap <Leader>ev :e ~/.vimrc<cr>

nmap <leader>s :w<cr>
nmap <leader>ec :source %<CR>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

imap <C-Space> <C-X><C-O>
nmap <leader>x :bd<CR>

nnoremap <silent> <Leader>gb :e#<CR> 

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
