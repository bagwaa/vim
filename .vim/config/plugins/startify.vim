let g:startify_custom_header = []
let g:startify_session_autoload = 1
let g:startify_enable_special = 0
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]
let g:startify_bookmarks = [
            \ { 'a': '~/.vim/config/general/settings.vim' },
            \ { 'b': '~/.vim/config/general/keymaps.vim' },
            \ { 'c': '~/.vim/config/general/buffers.vim' },
            \ { 'd': '~/.vim/config/general/filetypes.vim' },
            \ { 'e': '~/.vim/config/general/search.vim' },
            \ { 'f': '~/.vim/config/completion/general.vim' },
            \ { 'g': '~/.vim/config/completion/php.vim' },
            \ { 'i': '~/.vim/config/completion/javascript.vim' },
            \ { 'm': '~/.vim/config/plugins/git.vim' },
            \ { 'n': '~/.vim/config/plugins/nerdtree.vim' },
            \ { 'o': '~/.vim/config/plugins/startify.vim' },
            \ { 'p': '~/.vim/config/plugins/undotree.vim' },
            \ { 'z': '~/.zshrc' },
            \ ]

nnoremap <silent> <leader><Space> :Startify<CR>

