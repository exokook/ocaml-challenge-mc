
let total_score ((_:string), (written, oral)) = 
  written+oral
;;

let passed ((_:string), (written, oral)) = (written>=18) && (oral>=18);;

let string_of_result ((name:string), (written, oral)) =
  if(passed (name,(written,oral))) then 
    name^" passed with total "^(string_of_int(total_score(name,(written,oral))))
  else 
    name^" did not passed"
;;

let merge ((name1:string), ((written1:int), (oral1:int))) ((name2:string), ((written2:int), (oral2:int))) =
  if name1 <> name2 
  then failwith "They are not the same student"
  else (name1, ((max written1 written2), (max oral1,oral2)))
;;
    