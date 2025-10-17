let mux2 s1 a b = match(s1,a,b) with
    (true,_,_) -> a
  | _ -> b;;
let mux4 s1 s0 a0 a1 a2 a3 = mux2 s1 (mux2 s0 a3 a2) (mux2 s0 a1 a0) ;; 
assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;