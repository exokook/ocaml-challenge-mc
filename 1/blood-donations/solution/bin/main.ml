type blood_group = A | B | AB | O;;
let check_groups x y = if x = y then true else (if x = O then true else (if y = AB then true else false));;
assert (check_groups O AB = true);;
assert (check_groups A B = false);;
assert (check_groups AB AB = true);;