
type operation = Add of int * int | Sub of int * int | Mul of int * int | Div of int * int;;

let eval (op:operation):int option = match op with
  | Add (a, b) -> Some (a + b)
  | Sub (a, b) -> Some (a - b)
  | Mul (a, b) -> Some (a * b)
  | Div (a, b) -> if b = 0 then None else Some (a / b) ;;

let make_operation (op_char: char) (a: int) (b: int) : operation =
  match op_char with
  | '+' -> Add (a, b)
  | '-' -> Sub (a, b)
  | '*' -> Mul (a, b)
  | '/' -> if b = 0 then failwith "You can't divide numbers with 0" 
      else
        Div (a, b)
  | _ -> failwith "Wrong symbol" ;;
               
               
  (* --- Tests for eval --- *)

assert (eval (Add (5, 3)) = Some 8);
assert (eval (Add (-5, 3)) = Some (-2));
assert (eval (Add (0, 0)) = Some 0);

assert (eval (Sub (10, 2)) = Some 8);
assert (eval (Sub (2, 10)) = Some (-8));
assert (eval (Sub (5, 5)) = Some 0);

assert (eval (Mul (4, 5)) = Some 20);
assert (eval (Mul (4, -5)) = Some (-20));
assert (eval (Mul (4, 0)) = Some 0);

assert (eval (Div (10, 2)) = Some 5);
assert (eval (Div (10, 3)) = Some 3); 
assert (eval (Div (7, 3)) = Some 2);  
assert (eval (Div (-10, 3)) = Some (-3)); 
assert (eval (Div (0, 5)) = Some 0);

assert (eval (Div (10, 0)) = None);
assert (eval (Div (0, 0)) = None);

assert (make_operation '+' 5 3 = Add (5, 3));
assert (make_operation '-' 10 2 = Sub (10, 2));
assert (make_operation '*' 4 5 = Mul (4, 5));
assert (make_operation '/' 10 2 = Div (10, 2));
assert (make_operation '/' 10 3 = Div (10, 3));