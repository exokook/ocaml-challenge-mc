Random.self_init ();;

let guess5 (n : int) =
  if n < 1 || n > 5 then
    failwith "Input deve essere nel range range 1..5"
  else
    let r = Random.int(5) + 1 in
    
    let b = (n = r) in
    
    (b, r)
;;