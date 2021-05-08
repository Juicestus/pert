" Pert Vim auto indent script
" By Justus Languell

if exists("b:did_indent")
  finish
endif

let b:did_indent = 1

setlocal nolisp
setlocal autoindent
setlocal indentexpr=PertIndent(v:lnum)
setlocal indentkeys+=),then
setlocal noexpandtab

let s:cpo_save = &cpo
set cpo&vim

function! PertIndent(lnum) abort
  let prevlnum = prevnonblank(a:lnum-1)
  if prevlnum == 0
    return 0
  endif

  let prevl = substitute(getline(prevlnum), '#.*$', '', '')
  let thisl = substitute(getline(a:lnum), '#.*$', '', '')
  let previ = indent(prevlnum)

  let ind = previ 

  if prevl =~ '[(then]\s*$'
    let ind += shiftwidth()
  endif

 if prevl =~ '^\s*[)func]'
    let ind += shiftwidth()
  endif

  if thisl =~ '^\s*[)end]'
    let ind -= shiftwidth()
  endif

  return ind
endfunction

let &cpo = s:cpo_save
unlet s:cpo_save