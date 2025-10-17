let val_over v t = if v>=t then 1 else 0;;

let votes_over v1 v2 v3 t = (val_over v1 t)+(val_over v2 t)+(val_over v3 t);;

let movie_rating v1 v2 v3 =
  if v1 >5 || v1 < 1|| v2 >5 || v2 < 1|| v3 >5 || v3 < 1 then
    failwith "The imputs must be between 0 and 5"
  else
  if (votes_over v1 v2 v3 5) = 3 then "Masterpiece"
  else if ( votes_over v1 v2 v3 5)=2 && ( votes_over v1 v2 v3 4) = 3 then
    "Highly Recomended"
  else if ( votes_over v1 v2 v3 4)=2 && ( votes_over v1 v2 v3 3) = 3 then
    "Recommended"
  else "Mixed"
;;  