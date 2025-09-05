let do_all =
  let text = Reader.read "input.meleon" in
  let unicode_buffer = Sedlexing.Utf8.from_string text in 

  let parsed = Lowerer.parse (Tokenizer_.provide unicode_buffer) in

  let lowered = Lowerer.lower parsed in

  let interpreted = Interpreter.interpret lowered in

  Debug.print_parsed (Option.get interpreted)