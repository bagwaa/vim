let g:ale_php_phpcs_executable='/Users/bagwaa/.composer/vendor/bin/phpcs'
let g:ale_php_php_cs_fixer_executable='/Users/bagwaa/.composer/vendor/bin/php-cs-fixer'
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" ------------------------------------------------------------------------------
" # Ale Settings
" ------------------------------------------------------------------------------

let g:ale_sign_error = '🤮'
let g:ale_sign_style_error = '🤮'
let g:ale_sign_warning = '🤮'
let g:ale_sign_style_warning = '🤮'


" ------------------------------------------------------------------------------
" # Linters
" ------------------------------------------------------------------------------

let g:ale_linters = {
  \ 'php': ['php', 'phpcs', 'phpmd'],
  \ }

let g:ale_php_phpcs_standard = 'PSR2'


" ------------------------------------------------------------------------------
" # Fixers
" ------------------------------------------------------------------------------

let g:ale_fixers = {
  \ 'php': ['php_cs_fixer'],
  \ }

augroup fix_on_save
  autocmd! *
  autocmd BufEnter *.php call s:fix_php()
augroup END

function! s:fix_php()
  if filereadable('.php_cs')
    let b:ale_fix_on_save = 1
  endif
endfunction
