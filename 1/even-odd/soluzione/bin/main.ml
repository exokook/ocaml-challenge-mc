let is_even x = match (x mod 2) with
    1 -> true
  | _ -> false;;

let check_correct x = if ( x>= 1 && x<=5) then true else false;;

let win x y = match ( check_correct(x), check_correct(y),is_even(x+y) ) with
    (true,false,_) -> 1
  |(false,true,_) -> (-1)
  |(false,false,_) -> 0
  |(_,_,true)-> 1
  |(_,_,false)-> (-1)
;;