
let print_parsed code =
  Format.printf "%a\n%!" Expression.pp_expression code