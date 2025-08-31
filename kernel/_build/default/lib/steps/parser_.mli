
(* The type of tokens. *)

type token = 
  | WhiteSpace
  | SingleQuote
  | Semicolon
  | RightSmallProofBracket
  | RightRoundBracket
  | RightProofBracket
  | NewLine
  | LeftSmallProofBracket
  | LeftRoundBracket
  | LeftProofBracket
  | InfixIdentifier1 of (string)
  | InfixIdentifier0 of (string)
  | Identifier of (string)
  | EndOfFile
  | DoubleQuote
  | Comma
  | BadToken

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val expression_option: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Expression.expression option)
