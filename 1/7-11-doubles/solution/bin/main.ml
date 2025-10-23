let seven_eleven_doubles_con_init () : bool * int * int =
  Random.self_init (); 
  
  let d1 = Random.int(6) + 1 in
  let d2 = Random.int(6) + 1 in
  let sum = d1 + d2 in
  let b = (sum = 7) || (sum = 11) || (d1 = d2) in
  (b, d1, d2)
;;