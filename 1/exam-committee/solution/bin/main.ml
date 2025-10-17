type vote = StrongReject | WeakReject | WeakAccept | StrongAccept
  
let is_accept v = if v = WeakAccept || v = StrongAccept then 1 else 0;;
let accept_count v1 v2 v3 = (is_accept v1)+(is_accept v2)+(is_accept v3);;
let strong_rejection v1 v2 v3 = (v1 = StrongReject) || (v2 = StrongReject) || (v3 = StrongReject) ;;

let decide_exam v1 v2 v3 = ((accept_count v1 v2 v3) >= 2 ) && (not (strong_rejection v1 v2 v3));;
    