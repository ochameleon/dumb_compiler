
(* The type of tokens. *)

type token = 
  | WhiteSpace
  | SingleQuote
  | Semicolon
  | RightSmallProofBracket
  | RightRoundBracket
  | RightProofBracket
  | PrefixIdentifier1 of (string)
  | PrefixIdentifier0 of (string)
  | NewLine
  | LeftSmallProofBracket
  | LeftRoundBracket
  | LeftProofBracket
  | InfixRightIdentifier1 of (string)
  | InfixRightIdentifier0 of (string)
  | InfixLeftIdentifier1 of (string)
  | InfixLeftIdentifier0 of (string)
  | Identifier of (string)
  | EndOfFile
  | DoubleQuote
  | Comma
  | BadToken

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val expression_option: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Expression.expression option)
