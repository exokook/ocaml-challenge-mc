let minmax3 (a: 'a) b c  =
  
  let (min_ab, max_ab) =
    if a < b then (a, b) else (b, a)
  in
  
  let final_min = min c min_ab in
  let final_max = max c max_ab in
  
  (final_min, final_max)
;;