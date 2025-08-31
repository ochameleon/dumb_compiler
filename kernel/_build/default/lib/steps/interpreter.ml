open Expression

let rec substitute (arg : string) (f : expression) (expr : expression) =
	match f with
  | Identifier name -> if name = arg then expr else Identifier name

  | Concatenation { head = e0; tail = e1 } ->
    let e0 = substitute arg e0 expr in
    let e1 = substitute arg e1 expr in
    Concatenation { head = e0; tail = e1 }
  
  | Application { morphism = m; argument = a } -> (
    match m with
    | Application { morphism = Identifier "↦"; argument = a0 } ->(
      match a0 with
      | Identifier x ->
        if x = arg then
          Application { morphism = Application { morphism = Identifier "↦"; argument = Identifier x }; argument = a }
        else
          Application { morphism = Application { morphism = Identifier "↦"; argument = Identifier x }; argument = substitute arg a expr }
      | _ -> failwith "Bar Arrow is defined starting from something that is not a Identifier"
    )
    | m ->
      let m = substitute arg m expr in
      let a = substitute arg a expr in
      Application { morphism = m; argument = a }
  )
  | Void -> Void
  (*
  | ParticularAbstraction { argument = x; body = f0 } ->
    (* ?? *)
    if x = arg then
      ParticularAbstraction { argument = x; body = f0 }
    else
      ParticularAbstraction { argument = x; body = substitute arg f0 expr }
  *)

let rec interpret_expression (e : expression) =
  match e with
  | Identifier i -> Identifier i
  | Concatenation { head = e0; tail = e1 } -> Concatenation { head = interpret_expression e0; tail = interpret_expression e1 }
  
  | Application { morphism = m; argument = a } -> (
    let m = interpret_expression m in
    let a = interpret_expression a in
    match m with
    | Application { morphism = m0; argument = a0 } -> (
      match m0 with
      | Application { morphism = Identifier "↦"; argument = a1 } -> (
        match a1 with
        | Identifier i ->
          let a0 = substitute i a0 a in
          interpret_expression a0
        | _ -> failwith "Error: Morphism defined on non-identifier"
      )
      | m0 ->
        let m0 = interpret_expression m0 in
        Application { morphism = Application { morphism = m0; argument = a0 }; argument = a }
    )
    | m -> Application { morphism = m; argument = a }
  )

  | e -> e
  (*
  | GeneralAbstraction { argument = arg; body = expr } -> GeneralAbstraction { argument = arg; body = interpret_expression expr }
  | ParticularAbstraction { argument = arg; body = expr } -> ParticularAbstraction { argument = arg; body = interpret_expression expr }
  | Application { morphism = f; argument = arg } ->
    let f = interpret_expression f in
    let arg = interpret_expression arg in
    match f with
    | Identifier name ->
      Application { morphism = Identifier name; argument = arg }
      (* Search for theorems*)
    | GeneralAbstraction { argument = arg_replace; body = expr } -> (
      match arg with
      | Concatenation { head = arg0; tail = arg1 } ->
        let expr = substitute arg_replace expr arg0 in
        interpret_expression (Application { morphism = expr; argument = arg1 })
      | _ ->
        let expr = substitute arg_replace expr arg in
        interpret_expression expr
    )
    | ParticularAbstraction { argument = arg_replace; body = expr }  -> (
        match arg with
        | Identifier name when arg_replace = name ->
          interpret_expression expr
        | _ ->
          Application { morphism = f; argument = arg }
      )
    | Concatenation { head = e0; tail = e1 } ->
      let e0 = interpret_expression e0 in
      let e1 = interpret_expression e1 in
      Concatenation { head = Application { morphism = e0; argument = arg }; tail = Application { morphism = e1; argument = arg } }
    | _ -> 
      Application { morphism = f; argument = arg }
  *)

let interpret (expression_option : expression option) =
  match expression_option with
  | None -> None
  | Some e ->
    Some (interpret_expression e)