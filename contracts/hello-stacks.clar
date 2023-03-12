;;All we are doing here is defining a new public function 
;;called write-message. Public means that we can call this 
;;function from anywhere, as opposed to private, which would 
;;mean only this contract could call it.

;;Whenever we call this function, we need to pass it a message 
;;which is a UTF8 string with a maximum of 500 characters.

;;Next we see a block called begin. In Clarity, 
;;everything is a list inside of a list, so in this 
;;function definition, what we are really doing is calling 
;;the define-public function and passing it to arguments.

;;The first is the function signature, which contains the 
;;name and the arguments.

;;The second argument is the body of the function, 
;;but this can only contain a single expression. 
;;By wrapping our function body in a begin block, 
;;we can pass a multi-step function as a single expression.
(define-public (write-message (message (string-utf8 500)))
    (begin
        (print message)
        (ok "Message printed")
    )
)