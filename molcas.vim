" Vim syntax file
" Language: Molcas Input
" Maintainer: Freja Storm
" Latest Revision: 27 September 2017

if exists("b:current_syntax")
  finish
endif

syn keyword celBlockCmd COPY export End 

syn keyword celTodo contained TODO FIXME XXX NOTE
syn match celComment "*.*$" contains=celTodo
syn match celModule " &.*$" 
syn match celCommand ">.*$"


" Integer with - + or nothing in front
syn match celNumber '\d\+'
syn match celNumber '[-+]\d\+'

" Floating point number with decimal no E or e 
syn match celNumber '[-+]\d\+\.\d*'

" Floating point like number with E and no decimal point (+,-)
syn match celNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match celNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'

" Floating point like number with E and decimal point (+,-)
syn match celNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match celNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'


let b:current_syntax = "molcas"

hi def link celTodo        Todo
hi def link celComment     Comment
hi def link celModule	   Type
hi def link celBlockCmd    Statement
hi def link celCommand     Statement
hi def link celNumber      Constant
