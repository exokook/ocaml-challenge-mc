
let xor1 a b = ( a && (not b)) || ((not a) && b);;
let xor2 a b = if a then not b else b;;
let xor3 a b = match(a,b) with
(false,_) -> b|
_ -> not b;;