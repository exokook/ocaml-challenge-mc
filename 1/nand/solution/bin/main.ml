let nand1 a b = not ( a && b);;
let nan2 a b = if a then not b else true;;
let nand3 a b = match  (a,b) with
(false, _) -> true
| _ -> not b;;

