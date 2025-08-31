type expression =
  | Identifier of string
  | Concatenation of { head : expression ; tail : expression }
  | Application of { morphism : expression; argument : expression }
  | Void
[@@deriving show { with_path = false }]