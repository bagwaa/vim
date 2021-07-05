" location of linters and fixers
let g:ale_php_phpcs_executable='~/.composer/vendor/bin/phpcs'
let g:ale_php_php_cs_fixer_executable='~/.composer/vendor/bin/php-cs-fixer'
let g:ale_javascript_eslint_use_global=1

" clear the background in the gutter for the linting icons
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" gutter icons for when there are linting issues to resolve
let g:ale_sign_error = '🔴'
let g:ale_sign_style_error = '🔴'
let g:ale_sign_warning= '🧐'
let g:ale_sign_style_warning = '🧐'

" set the PHP standard to use for linting and fixing
let g:ale_php_phpcs_standard = 'PSR2'

" set the linters we want to use in ale
let g:ale_linters = {
  \ 'php': ['php', 'phpcs', 'phpmd'],
  \ 'javascript': ['prettier', 'eslint'],
  \ 'vue': ['eslint'],
  \ }

" set the fixers we want to use in ale
let g:ale_fixers = {
  \ 'php': ['php_cs_fixer'],
  \ 'html': ['prettier'],
  \ 'javascript': ['prettier', 'eslint'],
  \ 'vue': ['eslint'],
  \ }

let g:ale_fix_on_save = 1

" when entering a PHP buffer, if we have a .php_cs file then enable fix on
" save
augroup fix_on_save
  autocmd! *
  autocmd BufEnter *.php call s:fix_php()
augroup END

function! s:fix_php()
  if filereadable('.php_cs')
    let b:ale_fix_on_save = 1
  endif
endfunction
