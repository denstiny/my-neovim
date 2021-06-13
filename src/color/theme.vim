" 设置批注斜体
highlight Comment gui=italic 
" 设置关键字斜体
hi Identifier cterm=italic gui=italic 

set laststatus=2
highlight clear SignColumn

hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=NONE guifg=NONE gui=bold
" 取消vim空行的波浪 '~'
set fillchars=fold:\ ,vert:\ ,eob:\   ",msgsep:-
hi VertSplit  term=none  cterm=none  gui=none  guibg=#2C323C  guifg=none
hi Normal guibg=none ctermbg=NONE 

"Set the coc floating window background color
"hi CocFloating guibg=#31324B guifg=none 
hi NormalFloat guibg=none guifg=none 

"Set the default color floating window

"===
"=== spaceemacs color config
"===

hi Comment cterm=italic
hi Comment guifg=#5C6370 ctermfg=59


"=== 光标设置

autocmd InsertEnter * set guicursor=a:blinkon1,i:ver35-Cursor
autocmd InsertLeave * set guicursor=i:ver35-Cursor
autocmd VimLeave  * set gcr=n-v-c:ver25-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,a:blinkon1

"=== 设置模式颜色
hi ModeMsg guifg=#B2C1CE


"== 自动清空命令输出
function! s:empty_message(timer)
  if mode() ==# 'n'
    echon ''
  endif
endfunction

augroup cmd_msg_cls
    autocmd!
    autocmd CmdlineLeave :  call timer_start(10000, funcref('s:empty_message'))
augroup END
