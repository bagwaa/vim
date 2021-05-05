" when we activate easymotion, disable CoC for a second
" otherwise it gets all tangled up and linting throws a
" fit at all the random characters on the screen ......
let g:easymotion#is_active = 0

function! EasyMotionCoc() abort
  if EasyMotion#is_active()
    let g:easymotion#is_active = 1
    CocDisable
  else
    if g:easymotion#is_active == 1
      let g:easymotion#is_active = 0
      CocEnable
    endif
  endif
endfunction
autocmd TextChanged,CursorMoved * call EasyMotionCoc()
