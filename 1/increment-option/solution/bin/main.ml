let incr_opt x = match x with
    None -> None
  | Some x -> Some (x+1);;

incr_opt (Some 5) = Some 6;;
incr_opt None = None;;