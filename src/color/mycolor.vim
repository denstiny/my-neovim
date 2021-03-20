highlight Comment gui=italic "设置批注斜体"
hi comment ctermfg=6
se cursorline
"hi cursorline cterm=NONE ctermbg=NONE
highlight clear SignColumn
hi Normal guibg=#282A36  "背景色
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=NONE guifg=NONE gui=bold
" 取消vim空行的波浪 '~'
set fillchars=fold:\ ,vert:\|,eob:\   ",msgsep:-


"Set the coc floating window background color
hi CocFloating guibg=#333841 guifg=none 

hi NormalFloat guibg=none guifg=none 
"Set the default color floating window


"===
"=== spaceemacs color config
"===

hi Comment cterm=italic
hi Comment guifg=#5C6370 ctermfg=59


"=== 光标设置

autocmd VimLeave  * set gcr=n-v-c:ver25-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor


"=== 标签设置
hi TabLineFill guifg=#282A36 guibg=#282A36 ctermbg=None ctermfg=NONE
hi TabLineSel guifg=#70778a  guibg=#282A36 cterm=bold gui=bold
hi Tabline guifg=#282A36  guibg=#282A36


"=== bufer 设置

let g:fileNotNull = 1
fun! BufferIsEmpty() 
	if line('$') == 1 && getline(1) == ''
		return 1
	else
		return 0
	endif
endf 

fun! NotEmptySplit() 
	if g:fileNotNull==1
		if !BufferIsEmpty()
			set nu
		else
			set nonumber
		endif
	endif
	return
endf

let g:taboo_modified_tab_flag="%5*🔴%*"



fun! SystemTabline() 
	let g:s = &columns
	let l:sn = 0
	let l:Tabestr = "%4*" . g:DateTime() . "%*"
	while l:sn < (g:s-17)
		let l:sn += 1
		let l:Tabestr = l:Tabestr ." "
	endwhile
	let l:Tabestr= l:Tabestr . " %3* Anonymit  %m %*"
	let l:Tabestr= l:Tabestr
	let g:taboo_tab_format=l:Tabestr
endf

fun! g:DateTime() 
    let l:sas = system("echo `date +%H`")
	let l:Tabest = ""
	if l:sas > '06' && l:s < '18'
		let l:Tabest = "🌞"
	endif
	if l:sas < '06' || l:sas > '08'
		let l:Tabest = "🌙"
		endif
	let l:sdf = "%1" . l:Tabest
	return l:Tabest
endf

hi User1 guifg=#eea040 guibg=None
hi User2 guifg=#dd3333 guibg=none
hi User3 guifg=#ff66ff guibg=none
hi User4 guifg=#a0ee40 guibg=none
hi User5 guifg=#eeee40 guibg=none

autocmd  CursorMovedI * call NotEmptySplit()
autocmd BufEnter * call NotEmptySplit()
autocmd BufEnter * call SystemTabline()
autocmd VimResized * call SystemTabline()



"=== guivim
set guifont=FiraCode\ Nerd\ Font\ Mono,Unifont,Gulim,Yu\ Mincho,NSimSun:h20
let g:neovide_cursor_vfx_mode = "pixiedust"


