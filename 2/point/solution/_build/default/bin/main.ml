type point = float * float;;
type color = Red | Green | Blue;;
type colored_point = color * point;;

let transflate (( x, y): point) dx dy :point = (x +. dx, y +. dy);;

let distance_from_origin ((x,y):point) = Float.sqrt(x*.x +. y*.y);;

let same_color (cp1:colored_point)  (cp2:colored_point) = match (cp1, cp2) with
  ((Red, _), (Red, _))-> true
  |((Blue, _), (Blue, _))-> true
  |((Green, _), (Green, _))-> true
  | _ -> false ;;