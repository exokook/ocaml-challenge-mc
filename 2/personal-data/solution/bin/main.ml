type person = Person of (string * int * string option);;

let make_person (name:string) (age:int) (email:string option) = 
  if (age >= 0 && age <= 150) then Person(name,age,email)
  else
    failwith("Error! the age in input is not valid!")
;;
  
let get_email (per:person) = match per with
    Person(_,_,s) -> s ;;

let can_send_adult_email (per:person)  =
  match per with 
  | Person (_, age, Some _) -> age >= 18 
  | Person (_, _, None) -> false
;;

let gino = make_person "gino" 21 (Some "gino@gmail.com");;
let pino = make_person "pino" 23 None;;
let anna = make_person "anna" 16 (Some "anna@tiscali.it");;

assert(get_email gino = Some "gino@gmail.com");;
assert(get_email pino = None);;

assert(can_send_adult_email gino);;
assert(not (can_send_adult_email pino));;
assert(not (can_send_adult_email anna));;

(* 
type person = {
  name : string;
  age : int;
  email : string option;
}
;;

let make_person (name:string) (age:int) (email:string option) : person =
  if (age >= 0 && age <= 150) then
    { name = name; age = age; email = email }
  else
    failwith("Error! the age in input is not valid!")
;;


let get_email (per:person) : string option =
  per.email
;;

let can_send_adult_email (per:person) : bool =
  match per.email with
  | Some _ -> per.age >= 18 
  | None -> false 
;;


let gino = make_person "gino" 21 (Some "gino@gmail.com");;
let pino = make_person "pino" 23 None;;
let anna = make_person "anna" 16 (Some "anna@tiscali.it");;

assert(get_email gino = Some "gino@gmail.com");;
assert(get_email pino = None);;

assert(can_send_adult_email gino);;
assert(not (can_send_adult_email pino));;
assert(not (can_send_adult_email anna));;

print_endline "Tutti i test sui record sono stati superati con successo!";;
*)