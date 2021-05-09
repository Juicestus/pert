" Pert Vim syntax highlighting
" By Justus Languell

syn region pertString start=/\v"/ skip=/v\\./ end=/\v"/

syn match pertOperator "\v\="
syn match pertOperator "\v\!\="
syn match pertOperator "\v\*"
syn match pertOperator "\v\/"
syn match pertOperator "\v\+"
syn match pertOperator "\v\-"
syn match pertOperator "\v\<"
syn match pertOperator "\v\<\="
syn match pertOperator "\v\=\="
syn match pertOperator "\v\>"
syn match pertOperator "\v\>\="

syn match pertComment "\v#.*$"
syn match pertComment "\v//.*$"

syn keyword pertConditional if
syn keyword pertConditional elif
syn keyword pertConditional else

syn keyword pertConditional while
syn keyword pertConditional for
syn keyword pertConditional to

syn keyword pertConditional break
syn keyword pertConditional continue

syn keyword pertLogic and
syn match pertLogic "\v\&\&"

syn keyword pertLogic not
syn match pertLogic "\v!"

syn keyword pertLogic or
syn match pertLogic "\v\|\|"

syn keyword pertDef func nextgroup=pertDefName skipwhite
syn keyword pertDef function nextgroup=pertDefName skipwhite
syn match pertDef "\v\@" nextgroup=pertDefName skipwhite
syn match pertDefName '\i\+' contained

syn keyword pertVar var nextgroup=pertVarName skipwhite
syn match pertVar "\v\$" nextgroup=pertVarName skipwhite
"syn match pertVarName '\i\+' contained

syn keyword pertImport import

syn keyword pertFlow then
syn keyword pertFlow end
syn match pertFlow "\v\{"
syn match pertFlow "\v\:"
syn match pertFlow "\v\}"

syn keyword pertFunction print
syn keyword pertFunction print_ret
syn keyword pertFunction input
syn keyword pertFunction input_int
syn keyword pertFunction clear
syn keyword pertFunction cls
syn keyword pertFunction is_num
syn keyword pertFunction is_str
syn keyword pertFunction is_list
syn keyword pertFunction is_func
syn keyword pertFunction append
syn keyword pertFunction pop
syn keyword pertFunction extend
syn keyword pertFunction len
syn keyword pertFunction run
syn keyword pertFunction pow
syn keyword pertFunction mod
syn keyword pertFunction integer
syn keyword pertFunction float

syn keyword pertVariable null
syn keyword pertVariable false
syn keyword pertVariable true 
syn keyword pertVariable math_pi

syn match pertNumber "\<\d\+"
syn match pertNumber "\<[-+]\d\+"

syn match pertFloat "\<\d\+\.\d*"
syn match pertFloat "\<[-+]\d\+\.\d*"

hi def link pertComment Comment
hi def link pertString String

hi def link pertFunction Function
hi def link pertVariable Identifier

hi def link pertNumber Number
hi def link pertFloat Float

hi def link pertFlow Type

hi def link pertVar Type
hi def link pertDef Type
hi def link pertImport Type

hi def link pertVarName Number
hi def link pertDefName Number

hi def link pertOperator Operator
hi def link pertConditional Operator
hi def link pertLogic Operator

let b:current_syntax = "pert"