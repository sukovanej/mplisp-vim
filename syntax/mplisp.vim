" Vim syntax file
" Language: mplisp
" Maintainer: Milan Suk
" Latest Revision: 31. 1. 2018

if exists("b:current_syntax")
  finish
endif

syn keyword builtin def
syn keyword builtin lambda

syn match basicOps '\(+\|==\|-\|*\|/\|or?\|and?\) ' 

syn match function '(def [[:alnum:]]+ '

syn match numberValue '\d\+'
syn match numberValue '[-+]\d\+'
syn match numberValue '[-+]\d\+\.\d*'
syn match numberValue '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match numberValue '\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match numberValue '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match numberValue '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

syn region listBlock start="(" end=")" fold transparent
syn region stringBlock start="\"" end="\""

let b:current_syntax = "mplisp"

hi def link builtin Identifier
hi def link basicOps Special
hi def link numberValue Constant
hi def link listBlock Statement
hi def link function Identifier
hi def link stringBlock String
