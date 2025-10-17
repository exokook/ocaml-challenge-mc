type season = Spring | Summer | Autumn | Winter;;

let squirrel_play temp season = if (season = Summer) then
    (if(temp > 14 && temp < 36) then true
     else false)
  else
    (if(temp > 14 && temp < 31) then true
     else false)
;;
assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;