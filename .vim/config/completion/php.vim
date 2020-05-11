au FileType php nmap <buffer> <Leader>u :PhpactorImportClass<CR>
au FileType php nmap <buffer> <Leader>e :PhpactorClassExpand<CR>
au FileType php nnoremap <buffer> <leader>f :call PhpCsFixerFixFile()<CR>

autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()
au FileType php nnoremap <silent> <Leader>gd :PhpactorGotoDefinition<CR>

let g:php_cs_fixer_rules = "@PSR2"
let g:php_cs_fixer_php_path = "php"
