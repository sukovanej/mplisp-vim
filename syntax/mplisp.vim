" Vim syntax file
" Language: mplisp
" Maintainer: Milan Suk
" Latest Revision: 31. 1. 2018

if exists("b:current_syntax")
  finish
endif

syn keyword basicLanguageKeywords def lambda

syn region lispList start="(" end=")" fold transparent

hi def link lispString      Constant
hi def link lispNumber      Constant


let b:current_syntax = "mplisp"
