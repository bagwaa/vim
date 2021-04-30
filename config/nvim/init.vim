set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

if filereadable(".vim.custom")
    so .vim.custom
else
    source ~/.vimrc
endif
