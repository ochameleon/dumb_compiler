open Expression
open Parser_

let parse = MenhirLib.Convert.Simplified.traditional2revised expression_option

let rec lower_expression (e : expression) : expression = 
  match e with
  | Identifier x -> Identifier x
  | Application { morphism = f; argument = a } -> (
    let f = lower_expression f in
    let a = lower_expression a in
    match a with
    | Concatenation { head = g; tail = h } ->
      Application { morphism = Application { morphism = f; argument = g} ; argument = h }
    | a -> Application { morphism = f; argument = a }
  )
  | Concatenation { head = g; tail = h } ->
    let g = lower_expression g in
    let h = lower_expression h in
    Concatenation { head = g; tail = h}
  | Void -> Void

let lower_expression_option (e : expression option) =
  match e with
  | Some e -> Some (lower_expression e)
  | None -> None