" Vim syntax file
" Language: mplisp
" Maintainer: Milan Suk
" Latest Revision: 31. 1. 2018

if exists("b:current_syntax")
  finish
endif

syn match numberValue '\(#t\|#f) '
syn match numberValue '\d\+'
syn match numberValue '[-+]\d\+'
syn match numberValue '[-+]\d\+\.\d*'
syn match numberValue '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match numberValue '\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match numberValue '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match numberValue '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match builtin '\(def\|lambda\|let\|let*\|map\|filter\|range\) '
syn match builtin '\(list-ref\|list\|apply\|length\|enumerate\|import\) '

syn match basicOps '\(+\|%\|!=\|==\|-\|*\|/\) '
syn match basicOps '\(or?\|and?\|bool?\|null?\|list?\|>\|<\) '

" syn match function ' adder '

syn match shebang '^#!\(.*\)$'

syn region listBlock start="(" end=")" fold transparent
syn region stringBlock start="\"" end="\""
syn region stringBlock start="\'" end="\'"

let b:current_syntax = "mplisp"

hi def link builtin Identifier
hi def link basicOps Special
hi def link numberValue Constant
hi def link listBlock Statement
hi def link function Identifier
hi def link stringBlock String
hi def link shebang Comment
