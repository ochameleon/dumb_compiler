%{
  open Expression
%}

%token WhiteSpace NewLine EndOfFile

%token LeftRoundBracket RightRoundBracket

%token Comma Semicolon

%token SingleQuote DoubleQuote

%token LeftProofBracket RightProofBracket
%token LeftSmallProofBracket RightSmallProofBracket

%token <string> Identifier
%token <string> PrefixIdentifier0
%token <string> InfixRightIdentifier0
%token <string> InfixLeftIdentifier0

%token <string> PrefixIdentifier1
%token <string> InfixRightIdentifier1
%token <string> InfixLeftIdentifier1

%token BadToken

%right PrefixIdentifier0_
%right InfixRightIdentifier0
%left  InfixLeftIdentifier0

%right PrefixIdentifier1_
%right InfixRightIdentifier1
%left  InfixLeftIdentifier1



%start <expression option> expression_option

%%

(* Expressions *)

let infix_terminal_expression ==
  | i = InfixRightIdentifier0; { Identifier i }
  | i = InfixLeftIdentifier0; { Identifier i }
  | i = InfixRightIdentifier1; { Identifier i }
  | i = InfixLeftIdentifier1; { Identifier i }

let prefix_terminal_expression0 ==
  | i = PrefixIdentifier0; { Identifier i }
let prefix_terminal_expression1 ==
  | i = PrefixIdentifier1; { Identifier i }

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
  | m = prefix_terminal_expression0; a0 = expression; %prec PrefixIdentifier0_ { Application { morphism = m; argument = a0 } }
  | m = prefix_terminal_expression1; a0 = expression; %prec PrefixIdentifier1_ { Application { morphism = m; argument = a0 } }

let expression ==
  | e = applied_to_bracketized_expression; { e }
  | e = applied_to_unbracketized_expression; { e }

let expression_option :=
  | NewLine; { None }
  | EndOfFile; { None }
  | e = expression; NewLine; { Some e }
  | e = expression; EndOfFile; { Some e }