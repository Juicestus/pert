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

  let prevl = substitute(substitute(getline(prevlnum), '#.*$', '', ''), '//.*$', '', '')
  let thisl = substitute(substitute(getline(a:lnum), '#.*$', '', ''), '//.*$', '', '')
  let previ = indent(prevlnum)

  let ind = previ 

  " Start Block
  if prevl =~ '[(then]\s*$'
    let ind += shiftwidth()
  endif

  if prevl =~ '[({]\s*$'
    let ind += shiftwidth()
  endif

  if prevl =~ '[(:]\s*$'
    let ind += shiftwidth()
  endif

  " Var
  "if prevl =~ '^\s*[)$]'
  "  let ind -= shiftwidth()
  "endif

  " Function
  if prevl =~ '^\s*[)func]' and not prevl =~ '[({]\s*$'
    let ind += shiftwidth()
  endif

  if prevl =~ '^\s*[)@]' and not prevl =~ '[({]\s*$'
    let ind += shiftwidth()
  endif

  " End Block
  if thisl =~ '^\s*[)end]'
    let ind -= shiftwidth()
  endif

  if thisl =~ '^\s*[)}]'
    let ind -= shiftwidth()
  endif
  

  return ind
endfunction

let &cpo = s:cpo_save
unlet s:cpo_save