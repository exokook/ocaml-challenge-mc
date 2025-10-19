let max (a:int) (b:int) = if a > b then a else b;;

let max_option offer1 offer2 = 
  match (offer1, offer2) with
  | (Some x, Some y) -> Some (max x y)  
  | (Some x, None) -> Some x
  | (None, Some y) -> Some y
  | (None, None) -> None ;; 

let best_offer offer1 offer2 offer3 =  
  max_option offer1 (max_option offer2 offer3);;