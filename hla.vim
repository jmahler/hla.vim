
"
" Vim syntax file
" Language:  HLA
"
" ~/.vim/syntax/hla.vim
"
" written by:      Jeremiah Mahler <jmmahler@gmail.com>
" created on:      10 Oct 2009
" last modified:   16 Nov 2009
"
" A Vim syntax definition for the HLA programming language.
"  http://en.wikipedia.org/wiki/High_Level_Assembly
" 

runtime syntax/c.vim
unlet b:current_syntax

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

"syn match hlaInclude "\#include"

syn keyword hlaRegister  eax ax al ah
syn keyword hlaRegister  ebx bx bl bh
syn keyword hlaRegister  ecx cx cl ch
syn keyword hlaRegister  edx dx dl dh
syn keyword hlaRegister  esi edi
syn keyword hlaType  uns16 uns8 uns32 int16 int32 char boolean dword string byte
syn keyword hlaConstant put flushInput nl
syn keyword hlaBoolean true false
syn keyword hlaDirective  mov add sub push pop mul div inc dec shr shl rol ror
syn keyword hlaDirective  var val
syn keyword hlaDirective  and or xor not
syn keyword hlaConditional  if then elseif else endif try endtry exception anyexception
syn keyword hlaRepeat  forever while endwhile for endfor repeat until
syn keyword hlaStatement  break continue raise unprotected
syn keyword hlaStatement  stdout.put stdin.get stdin.putu8size stdin.a_gets
syn keyword hlaStatement  malloc free stralloc strfree
syn keyword hlaStatement  program procedure begin end type returns
syn keyword hlaStatement  static const var readonly
syn keyword hlaTodo  TODO FIXME XXX contained
"syn match hlaComment  "//.*"
"syn region hlaComment start="/\*" end="\*/"


highlight link hlaRegister Special
highlight link hlaType Type
highlight link hlaComment Comment
highlight link hlaConstant Constant
highlight link hlaDirective Statement
highlight link hlaStatement Statement
highlight link hlaInclude Include
highlight link hlaConditional Conditional
highlight link hlaRepeat Repeat
highlight link hlaTodo Todo
highlight link hlaBoolean Boolean

let b:current_syntax = "hla"

