type token =
  | Identifier of name
  | WhiteSpace
  | NewLine
  | EndOfFile
  | LeftRoundBracket
  | RightRoundBracket
  | Comma
  | Semicolon
  | SingleQuote
  | DoubleQuote
  | LeftProofBracket
  | RightProofBracket
  | LeftSmallProofBracket
  | RightSmallProofBracket
  | Bar
  | Colon
  | SmallBar
  | SmallColon
  | BadToken
and name = string

let whitespace = [%sedlex.regexp? (' ' | '\t')]
let newline = [%sedlex.regexp? '\n']

let left_round_bracket = [%sedlex.regexp? '(']
let right_round_bracket = [%sedlex.regexp? ')']

let single_quote = [%sedlex.regexp? '\'']
let double_quote = [%sedlex.regexp? '"']

let comma = [%sedlex.regexp? ',']
let semicolon = [%sedlex.regexp? ';']

let left_proof_bracket = [%sedlex.regexp? 0x25A1]
let right_proof_bracket = [%sedlex.regexp? 0x25A0]

let left_small_proof_bracket = [%sedlex.regexp? 0x25AB]
let right_small_proof_bracket = [%sedlex.regexp? 0x25AA]

let bar = [%sedlex.regexp? '|']
let colon = [%sedlex.regexp? ':']

let small_bar = [%sedlex.regexp? 0x2758]
let small_colon = [%sedlex.regexp? 0x00B7]

let arrow = [%sedlex.regexp? 0x2192]
let multimap = [%sedlex.regexp? 0x22B8]

let bar_arrow = [%sedlex.regexp? 0x21A6]
let colon_arrow = [%sedlex.regexp? 0x29F4]

let special = [%sedlex.regexp? (whitespace | newline | left_round_bracket | right_round_bracket | single_quote | double_quote | comma | semicolon | left_proof_bracket | right_proof_bracket | left_small_proof_bracket | right_small_proof_bracket)]

let invisible = [%sedlex.regexp? (0x000B | 0x000C | 0x00A0 | 0x1680 | 0x180E | 0x2000 | 0x2001 | 0x2002 | 0x2003 | 0x2004 | 0x2005 | 0x2006 | 0x2007 | 0x2008 | 0x2009 | 0x200A | 0x200B | 0x200C | 0x200D | 0x200E | 0x200F | 0x2028 | 0x2029 | 0x202F | 0x205F | 0x2060 | 0x2061 | 0x2062 | 0x2063 | 0x2064 | 0xFEFF)]

(* Non fundamental or unallowed characters *)

let string = [%sedlex.regexp? '"', Star any, '"']
let quotation = [%sedlex.regexp? '\'', Star any, '\'']

let any_but_special = [%sedlex.regexp? Compl special]
let name = [%sedlex.regexp? Plus any_but_special]

let number = [%sedlex.regexp? Plus '0'..'9']

let tokenize (buffer : Sedlexing.lexbuf) : Parser_.token =
  match%sedlex buffer with  
  (* Correct *)
  | left_round_bracket, Star (whitespace | newline) -> LeftRoundBracket
  | Star (whitespace | newline), right_round_bracket -> RightRoundBracket

  | single_quote -> SingleQuote
  | double_quote -> DoubleQuote

  | comma, Plus whitespace -> Comma
  | semicolon, Plus whitespace -> Semicolon

  | left_proof_bracket, Star (whitespace | newline) -> LeftProofBracket
  | Star (whitespace | newline), right_proof_bracket -> RightProofBracket
  | left_small_proof_bracket, Star (whitespace | newline) -> LeftSmallProofBracket
  | Star (whitespace | newline), right_small_proof_bracket -> RightSmallProofBracket

  | Plus whitespace -> WhiteSpace
  | Plus newline -> NewLine
  | eof -> EndOfFile
  | name ->
      Identifier (Sedlexing.Utf8.lexeme buffer)

  (* Errors *)
  | invisible -> failwith "Tokenizer Error: Invisible character used"
  | _ -> failwith "Tokenizer Error: Unknown error"

let provide (buffer : Sedlexing.lexbuf) (_ : unit) : Parser_.token * Lexing.position * Lexing.position =
  let token = tokenize buffer in
  let start, stop = Sedlexing.lexing_positions buffer in
  (token, start, stop)