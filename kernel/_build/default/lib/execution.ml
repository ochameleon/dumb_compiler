let do_all =
  let text = Reader.read "input.meleon" in
  let unicode_buffer = Sedlexing.Utf8.from_string text in 

  let parsed = Parser.parse (Tokenizer.provide unicode_buffer) in

  let lowered = Parser.lower_expression_option parsed in

  let interpreted = Interpreter.interpret lowered in

  Debug.print_parsed (Option.get interpreted)