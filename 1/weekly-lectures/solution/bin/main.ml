type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP
              
let isLecture d c = match(d,c) with
    (Mo,LIP) -> true
  |(Tu,ALF) -> true
  |(We,LIP) -> true
  |(Th,ALF) -> true
  |(Fr,ALF) -> true
  |_ -> false
;;