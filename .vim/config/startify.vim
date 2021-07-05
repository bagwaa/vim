let g:startify_custom_header = []
let g:startify_session_autoload = 1
let g:startify_enable_special = 0
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ ]
let g:startify_bookmarks = [
            \ { 'v': '~/.vimrc' },
            \ { 'z': '~/.zshrc' },
            \ { 'vg': '~/.vim/config/general.vim' },
            \ { 'vsn': '~/.vim/config/snippets.vim' },
            \ { 'vce': '~/.vim/config/coc-explorer.vim' },
            \ { 'vs': '~/.vim/config/search.vim' },
            \ { 'vb': '~/.vim/config/buffer.vim' },
            \ { 'vp': '~/.vim/config/php.vim' },
            \ { 'vc': '~/.vim/config/coc.vim' },
            \ { 'vgt': '~/.vim/config/git.vim' },
            \ { 'vu': '~/.vim/config/undo.vim' },
            \ { 'vth': '~/.vim/config/theme.vim' },
            \ { 'vst': '~/.vim/config/startify.vim' },
            \ { 'vct': '~/.vim/config/closetag.vim' },
            \ ]

nnoremap <silent> <leader><Space> :Startify<CR>
