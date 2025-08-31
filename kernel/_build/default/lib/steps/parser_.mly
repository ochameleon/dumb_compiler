%{
  open Expression
%}

%token WhiteSpace NewLine EndOfFile

%token LeftRoundBracket RightRoundBracket

%token SingleQuote DoubleQuote

%token Comma Semicolon

%token LeftProofBracket RightProofBracket
%token LeftSmallProofBracket RightSmallProofBracket

%token <string> Identifier
%token <string> InfixIdentifier0
%token <string> InfixIdentifier1

%token BadToken


%right InfixIdentifier0
%right InfixIdentifier1


%start <expression option> expression_option

%%

(* Expressions *)

let infix_terminal_expression ==
  | i = InfixIdentifier0; { Identifier i }
  | i = InfixIdentifier1; { Identifier i }

let terminal_expression ==
  | i = Identifier; { Identifier i }

let comma_extension_expression ==
  | Comma; e = sequence_expression; { e }
let sequence_expression :=
  | expression
  | e = expression; rest = comma_extension_expression; { Concatenation { head = e; tail = rest } }

let bracketized_expression ==
  | LeftRoundBracket; RightRoundBracket; { Void }
  | LeftRoundBracket; e = sequence_expression; RightRoundBracket; { e }

let isolated_expression :=
  | terminal_expression
  | bracketized_expression

let applied_to_bracketized_expression :=
  | isolated_expression
  | m = applied_to_bracketized_expression; a = bracketized_expression; { Application { morphism = m; argument = a } }

let applied_to_unbracketized_expression :=
  | a0 = expression; m = infix_terminal_expression; a1 = expression; { Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } }

let expression ==
  | e = applied_to_bracketized_expression; { e }
  | e = applied_to_unbracketized_expression; { e }

let expression_option :=
  | NewLine; { None }
  | EndOfFile; { None }
  | e = expression; NewLine; { Some e }
  | e = expression; EndOfFile; { Some e }
