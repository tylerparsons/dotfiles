" Change tabs and indentation
" to entered as 'size' spaces

function! Tab(size)
  " Set new tab properties
  let &ts = a:size
  let &sw = a:size
  set et
  " Replace existing tabs with spaces
  let l:spaces = ""
  for s in range(1, a:size)
     let l:spaces = l:spaces . " "
  endfor
  " TODO fix
  "substitute(%s, "\t", s:spaces, g)
  unlet l:spaces
endfunction


command -nargs=1 Tab call Tab(<f-args>)
command Vimrc :e ~/.vimrc
command Bashrc :e ~/.bashrc
command Prof :e ~/.profile

" User settings
set nu
set cmdheight=2
Tab 4

" FileType overrides
autocmd FileType scala Tab 2
autocmd FileType ruby Tab 2

