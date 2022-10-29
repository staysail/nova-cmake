
(function_def
	(function_command) @start
	(#set! role function)
	(endfunction_command) @end.after
)

(macro_def
	(macro_command) @start
	(#set! role function)
	(endmacro_command) @end.after
)

; TODO: need to figure out how to deal with else and elseif
(if_condition
	(if_command) @start
	(#set! role block)
	(endif_command) @end.after
)

(foreach_loop
 (foreach_command) @start
 (#set! role_block)
 (endforeach_command) @end.after)

(while_loop
  (while_command) @start
  (#set! role_block)
  (endwhile_command) @end.after)
