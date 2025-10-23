let square (x : int) : int =
  x * x
;; 

let exp9 (x : int) : int =
  let x2 = square x in
  let x4 = square x2 in
  let x8 = square x4 in
  x * x8
;;