let parrot_trouble talk hour = if ( hour < 0 || hour > 23 ) then None else
    (if talk then
       ( if hour > 7 || hour < 20 then Some false else Some true) 
     else Some false
    )
;;