au FileType php nnoremap <buffer> <leader>f :call PhpCsFixerFixFile()<CR>
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

let g:php_cs_fixer_rules = "@PSR2"
let g:php_cs_fixer_cache = ".php_cs.cache"
let g:php_cs_fixer_config_file = '.php_cs'
