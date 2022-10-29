[
"(" ")" "{" "}"
] @bracket
[ "<" ">" ] @tag.bracket
[ "$" ] @operator
[ ":" ] @operator
(line_comment) @comment
(bracket_comment) @comment
(function) @keyword
(endfunction) @keyword
[
(macro)
(endmacro)
] @keyword
[
(foreach)
(endforeach)
] @keyword.condition
[
(while)
(endwhile)
] @keyword.condition
[
(if)
(else)
(elseif)
(endif)
] @keyword.condition

(env_var "ENV" @identifier.global (variable) @identifier.key)
(cache_var "CACHE" @identifier.global (variable) @identifier.key)

(normal_var (variable) @identifier.variable)

(normal_command (identifier) @identifier.function)
(escape_sequence) @string.escape
(quoted_element) @string

; generator expression - best effort
(gen_exp (argument (unquoted_argument) @identifier.type.protocol) ":")

; reserved variable names we treat them as core variables
(argument (unquoted_argument) @_arg (#match? @_arg "^(_)?CMAKE_")) @identifier.variable.core

; We could mark all arguments as identifier.argument, but that leaves pretty
; much everything the same color in most themes, beacuse almost everything in
; in a CMakeLists is an argument.  It would be kind of cool to find all the
; special argumetns, like STREQUAL, and PRIVATE, etc. and mark those somehow
; but that's a lot of work, and it really turns into semantic rather syntactic
; analysis.  Syntactically, CMake is rather simple.

