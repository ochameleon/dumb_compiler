
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WhiteSpace
    | SingleQuote
    | Semicolon
    | RightSmallProofBracket
    | RightRoundBracket
    | RightProofBracket
    | PrefixIdentifier1 of (
# 20 "lib/steps/parser_.mly"
       (string)
# 21 "lib/steps/parser_.ml"
  )
    | PrefixIdentifier0 of (
# 17 "lib/steps/parser_.mly"
       (string)
# 26 "lib/steps/parser_.ml"
  )
    | NewLine
    | LeftSmallProofBracket
    | LeftRoundBracket
    | LeftProofBracket
    | InfixRightIdentifier1 of (
# 21 "lib/steps/parser_.mly"
       (string)
# 35 "lib/steps/parser_.ml"
  )
    | InfixRightIdentifier0 of (
# 18 "lib/steps/parser_.mly"
       (string)
# 40 "lib/steps/parser_.ml"
  )
    | InfixLeftIdentifier1 of (
# 22 "lib/steps/parser_.mly"
       (string)
# 45 "lib/steps/parser_.ml"
  )
    | InfixLeftIdentifier0 of (
# 19 "lib/steps/parser_.mly"
       (string)
# 50 "lib/steps/parser_.ml"
  )
    | Identifier of (
# 16 "lib/steps/parser_.mly"
       (string)
# 55 "lib/steps/parser_.ml"
  )
    | EndOfFile
    | DoubleQuote
    | Comma
    | BadToken
  
end

include MenhirBasics

# 1 "lib/steps/parser_.mly"
  
  open Expression

# 70 "lib/steps/parser_.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_expression_option) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: expression_option. *)

  | MenhirState01 : (('s, _menhir_box_expression_option) _menhir_cell1_PrefixIdentifier1, _menhir_box_expression_option) _menhir_state
    (** State 01.
        Stack shape : PrefixIdentifier1.
        Start symbol: expression_option. *)

  | MenhirState02 : (('s, _menhir_box_expression_option) _menhir_cell1_PrefixIdentifier0, _menhir_box_expression_option) _menhir_state
    (** State 02.
        Stack shape : PrefixIdentifier0.
        Start symbol: expression_option. *)

  | MenhirState03 : (('s, _menhir_box_expression_option) _menhir_cell1_LeftRoundBracket, _menhir_box_expression_option) _menhir_state
    (** State 03.
        Stack shape : LeftRoundBracket.
        Start symbol: expression_option. *)

  | MenhirState10 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixRightIdentifier1, _menhir_box_expression_option) _menhir_state
    (** State 10.
        Stack shape : applied_to_unbracketized_expression InfixRightIdentifier1.
        Start symbol: expression_option. *)

  | MenhirState12 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixLeftIdentifier1, _menhir_box_expression_option) _menhir_state
    (** State 12.
        Stack shape : applied_to_unbracketized_expression InfixLeftIdentifier1.
        Start symbol: expression_option. *)

  | MenhirState15 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression, _menhir_box_expression_option) _menhir_state
    (** State 15.
        Stack shape : applied_to_bracketized_expression.
        Start symbol: expression_option. *)

  | MenhirState20 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixRightIdentifier1, _menhir_box_expression_option) _menhir_state
    (** State 20.
        Stack shape : applied_to_bracketized_expression InfixRightIdentifier1.
        Start symbol: expression_option. *)

  | MenhirState23 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixLeftIdentifier1, _menhir_box_expression_option) _menhir_state
    (** State 23.
        Stack shape : applied_to_bracketized_expression InfixLeftIdentifier1.
        Start symbol: expression_option. *)

  | MenhirState26 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixRightIdentifier0, _menhir_box_expression_option) _menhir_state
    (** State 26.
        Stack shape : applied_to_bracketized_expression InfixRightIdentifier0.
        Start symbol: expression_option. *)

  | MenhirState28 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixRightIdentifier0, _menhir_box_expression_option) _menhir_state
    (** State 28.
        Stack shape : applied_to_unbracketized_expression InfixRightIdentifier0.
        Start symbol: expression_option. *)

  | MenhirState30 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixLeftIdentifier0, _menhir_box_expression_option) _menhir_state
    (** State 30.
        Stack shape : applied_to_unbracketized_expression InfixLeftIdentifier0.
        Start symbol: expression_option. *)

  | MenhirState34 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixLeftIdentifier0, _menhir_box_expression_option) _menhir_state
    (** State 34.
        Stack shape : applied_to_bracketized_expression InfixLeftIdentifier0.
        Start symbol: expression_option. *)

  | MenhirState38 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression, _menhir_box_expression_option) _menhir_state
    (** State 38.
        Stack shape : applied_to_bracketized_expression.
        Start symbol: expression_option. *)

  | MenhirState41 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression, _menhir_box_expression_option) _menhir_state
    (** State 41.
        Stack shape : applied_to_unbracketized_expression.
        Start symbol: expression_option. *)


and ('s, 'r) _menhir_cell1_applied_to_bracketized_expression = 
  | MenhirCell1_applied_to_bracketized_expression of 's * ('s, 'r) _menhir_state * (Expression.expression)

and ('s, 'r) _menhir_cell1_applied_to_unbracketized_expression = 
  | MenhirCell1_applied_to_unbracketized_expression of 's * ('s, 'r) _menhir_state * (Expression.expression)

and 's _menhir_cell0_InfixLeftIdentifier0 = 
  | MenhirCell0_InfixLeftIdentifier0 of 's * (
# 19 "lib/steps/parser_.mly"
       (string)
# 159 "lib/steps/parser_.ml"
)

and 's _menhir_cell0_InfixLeftIdentifier1 = 
  | MenhirCell0_InfixLeftIdentifier1 of 's * (
# 22 "lib/steps/parser_.mly"
       (string)
# 166 "lib/steps/parser_.ml"
)

and 's _menhir_cell0_InfixRightIdentifier0 = 
  | MenhirCell0_InfixRightIdentifier0 of 's * (
# 18 "lib/steps/parser_.mly"
       (string)
# 173 "lib/steps/parser_.ml"
)

and 's _menhir_cell0_InfixRightIdentifier1 = 
  | MenhirCell0_InfixRightIdentifier1 of 's * (
# 21 "lib/steps/parser_.mly"
       (string)
# 180 "lib/steps/parser_.ml"
)

and ('s, 'r) _menhir_cell1_LeftRoundBracket = 
  | MenhirCell1_LeftRoundBracket of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PrefixIdentifier0 = 
  | MenhirCell1_PrefixIdentifier0 of 's * ('s, 'r) _menhir_state * (
# 17 "lib/steps/parser_.mly"
       (string)
# 190 "lib/steps/parser_.ml"
)

and ('s, 'r) _menhir_cell1_PrefixIdentifier1 = 
  | MenhirCell1_PrefixIdentifier1 of 's * ('s, 'r) _menhir_state * (
# 20 "lib/steps/parser_.mly"
       (string)
# 197 "lib/steps/parser_.ml"
)

and _menhir_box_expression_option = 
  | MenhirBox_expression_option of (Expression.expression option) [@@unboxed]

let _menhir_action_01 =
  fun _1 ->
    (_1 : (Expression.expression))

let _menhir_action_02 =
  fun _1 _2 m ->
    let a = 
# 61 "lib/steps/parser_.mly"
                                         ( Void )
# 212 "lib/steps/parser_.ml"
     in
    (
# 70 "lib/steps/parser_.mly"
                                                                       ( Application { morphism = m; argument = a } )
# 217 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_03 =
  fun _1 _3 e m ->
    let a = 
# 62 "lib/steps/parser_.mly"
                                                                  ( e )
# 225 "lib/steps/parser_.ml"
     in
    (
# 70 "lib/steps/parser_.mly"
                                                                       ( Application { morphism = m; argument = a } )
# 230 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_04 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 240 "lib/steps/parser_.ml"
      
    in
    let m = 
# 41 "lib/steps/parser_.mly"
                               ( Identifier i )
# 246 "lib/steps/parser_.ml"
     in
    let a0 = 
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 251 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 256 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_05 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 266 "lib/steps/parser_.ml"
      
    in
    let m = 
# 41 "lib/steps/parser_.mly"
                               ( Identifier i )
# 272 "lib/steps/parser_.ml"
     in
    let a0 = 
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 277 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 282 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_06 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 292 "lib/steps/parser_.ml"
      
    in
    let m = 
# 42 "lib/steps/parser_.mly"
                              ( Identifier i )
# 298 "lib/steps/parser_.ml"
     in
    let a0 = 
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 303 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 308 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_07 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 318 "lib/steps/parser_.ml"
      
    in
    let m = 
# 42 "lib/steps/parser_.mly"
                              ( Identifier i )
# 324 "lib/steps/parser_.ml"
     in
    let a0 = 
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 329 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 334 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_08 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 344 "lib/steps/parser_.ml"
      
    in
    let m = 
# 43 "lib/steps/parser_.mly"
                               ( Identifier i )
# 350 "lib/steps/parser_.ml"
     in
    let a0 = 
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 355 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 360 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_09 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 370 "lib/steps/parser_.ml"
      
    in
    let m = 
# 43 "lib/steps/parser_.mly"
                               ( Identifier i )
# 376 "lib/steps/parser_.ml"
     in
    let a0 = 
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 381 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 386 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_10 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 396 "lib/steps/parser_.ml"
      
    in
    let m = 
# 44 "lib/steps/parser_.mly"
                              ( Identifier i )
# 402 "lib/steps/parser_.ml"
     in
    let a0 = 
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 407 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 412 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_11 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 422 "lib/steps/parser_.ml"
      
    in
    let m = 
# 44 "lib/steps/parser_.mly"
                              ( Identifier i )
# 428 "lib/steps/parser_.ml"
     in
    let a0 = 
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 433 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 438 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_12 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 448 "lib/steps/parser_.ml"
      
    in
    let m = 
# 41 "lib/steps/parser_.mly"
                               ( Identifier i )
# 454 "lib/steps/parser_.ml"
     in
    let a0 = 
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 459 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 464 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_13 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 474 "lib/steps/parser_.ml"
      
    in
    let m = 
# 41 "lib/steps/parser_.mly"
                               ( Identifier i )
# 480 "lib/steps/parser_.ml"
     in
    let a0 = 
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 485 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 490 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_14 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 500 "lib/steps/parser_.ml"
      
    in
    let m = 
# 42 "lib/steps/parser_.mly"
                              ( Identifier i )
# 506 "lib/steps/parser_.ml"
     in
    let a0 = 
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 511 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 516 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_15 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 526 "lib/steps/parser_.ml"
      
    in
    let m = 
# 42 "lib/steps/parser_.mly"
                              ( Identifier i )
# 532 "lib/steps/parser_.ml"
     in
    let a0 = 
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 537 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 542 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_16 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 552 "lib/steps/parser_.ml"
      
    in
    let m = 
# 43 "lib/steps/parser_.mly"
                               ( Identifier i )
# 558 "lib/steps/parser_.ml"
     in
    let a0 = 
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 563 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 568 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_17 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 578 "lib/steps/parser_.ml"
      
    in
    let m = 
# 43 "lib/steps/parser_.mly"
                               ( Identifier i )
# 584 "lib/steps/parser_.ml"
     in
    let a0 = 
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 589 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 594 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_18 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 604 "lib/steps/parser_.ml"
      
    in
    let m = 
# 44 "lib/steps/parser_.mly"
                              ( Identifier i )
# 610 "lib/steps/parser_.ml"
     in
    let a0 = 
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 615 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 620 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_19 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 630 "lib/steps/parser_.ml"
      
    in
    let m = 
# 44 "lib/steps/parser_.mly"
                              ( Identifier i )
# 636 "lib/steps/parser_.ml"
     in
    let a0 = 
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 641 "lib/steps/parser_.ml"
     in
    (
# 73 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 646 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_20 =
  fun e i ->
    let a0 = 
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 654 "lib/steps/parser_.ml"
     in
    let m = 
# 47 "lib/steps/parser_.mly"
                           ( Identifier i )
# 659 "lib/steps/parser_.ml"
     in
    (
# 74 "lib/steps/parser_.mly"
                                                                               ( Application { morphism = m; argument = a0 } )
# 664 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_21 =
  fun e i ->
    let a0 = 
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 672 "lib/steps/parser_.ml"
     in
    let m = 
# 47 "lib/steps/parser_.mly"
                           ( Identifier i )
# 677 "lib/steps/parser_.ml"
     in
    (
# 74 "lib/steps/parser_.mly"
                                                                               ( Application { morphism = m; argument = a0 } )
# 682 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_22 =
  fun e i ->
    let a0 = 
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 690 "lib/steps/parser_.ml"
     in
    let m = 
# 49 "lib/steps/parser_.mly"
                           ( Identifier i )
# 695 "lib/steps/parser_.ml"
     in
    (
# 75 "lib/steps/parser_.mly"
                                                                               ( Application { morphism = m; argument = a0 } )
# 700 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_23 =
  fun e i ->
    let a0 = 
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 708 "lib/steps/parser_.ml"
     in
    let m = 
# 49 "lib/steps/parser_.mly"
                           ( Identifier i )
# 713 "lib/steps/parser_.ml"
     in
    (
# 75 "lib/steps/parser_.mly"
                                                                               ( Application { morphism = m; argument = a0 } )
# 718 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_24 =
  fun _1 ->
    (
# 82 "lib/steps/parser_.mly"
             ( None )
# 726 "lib/steps/parser_.ml"
     : (Expression.expression option))

let _menhir_action_25 =
  fun _1 ->
    (
# 83 "lib/steps/parser_.mly"
               ( None )
# 734 "lib/steps/parser_.ml"
     : (Expression.expression option))

let _menhir_action_26 =
  fun _2 e ->
    let e = 
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 742 "lib/steps/parser_.ml"
     in
    (
# 84 "lib/steps/parser_.mly"
                             ( Some e )
# 747 "lib/steps/parser_.ml"
     : (Expression.expression option))

let _menhir_action_27 =
  fun _2 e ->
    let e = 
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 755 "lib/steps/parser_.ml"
     in
    (
# 84 "lib/steps/parser_.mly"
                             ( Some e )
# 760 "lib/steps/parser_.ml"
     : (Expression.expression option))

let _menhir_action_28 =
  fun _2 e ->
    let e = 
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 768 "lib/steps/parser_.ml"
     in
    (
# 85 "lib/steps/parser_.mly"
                               ( Some e )
# 773 "lib/steps/parser_.ml"
     : (Expression.expression option))

let _menhir_action_29 =
  fun _2 e ->
    let e = 
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 781 "lib/steps/parser_.ml"
     in
    (
# 85 "lib/steps/parser_.mly"
                               ( Some e )
# 786 "lib/steps/parser_.ml"
     : (Expression.expression option))

let _menhir_action_30 =
  fun i ->
    (
# 52 "lib/steps/parser_.mly"
                    ( Identifier i )
# 794 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_31 =
  fun _1 _2 ->
    (
# 61 "lib/steps/parser_.mly"
                                         ( Void )
# 802 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_32 =
  fun _1 _3 e ->
    (
# 62 "lib/steps/parser_.mly"
                                                                  ( e )
# 810 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_33 =
  fun e ->
    (
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 818 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_34 =
  fun e ->
    (
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 826 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_35 =
  fun _1 e e_inlined1 ->
    let rest =
      let e = e_inlined1 in
      
# 55 "lib/steps/parser_.mly"
                                    ( e )
# 836 "lib/steps/parser_.ml"
      
    in
    let e = 
# 78 "lib/steps/parser_.mly"
                                           ( e )
# 842 "lib/steps/parser_.ml"
     in
    (
# 58 "lib/steps/parser_.mly"
                                                       ( Concatenation { head = e; tail = rest } )
# 847 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_36 =
  fun _1 e e_inlined1 ->
    let rest =
      let e = e_inlined1 in
      
# 55 "lib/steps/parser_.mly"
                                    ( e )
# 857 "lib/steps/parser_.ml"
      
    in
    let e = 
# 79 "lib/steps/parser_.mly"
                                             ( e )
# 863 "lib/steps/parser_.ml"
     in
    (
# 58 "lib/steps/parser_.mly"
                                                       ( Concatenation { head = e; tail = rest } )
# 868 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | BadToken ->
        "BadToken"
    | Comma ->
        "Comma"
    | DoubleQuote ->
        "DoubleQuote"
    | EndOfFile ->
        "EndOfFile"
    | Identifier _ ->
        "Identifier"
    | InfixLeftIdentifier0 _ ->
        "InfixLeftIdentifier0"
    | InfixLeftIdentifier1 _ ->
        "InfixLeftIdentifier1"
    | InfixRightIdentifier0 _ ->
        "InfixRightIdentifier0"
    | InfixRightIdentifier1 _ ->
        "InfixRightIdentifier1"
    | LeftProofBracket ->
        "LeftProofBracket"
    | LeftRoundBracket ->
        "LeftRoundBracket"
    | LeftSmallProofBracket ->
        "LeftSmallProofBracket"
    | NewLine ->
        "NewLine"
    | PrefixIdentifier0 _ ->
        "PrefixIdentifier0"
    | PrefixIdentifier1 _ ->
        "PrefixIdentifier1"
    | RightProofBracket ->
        "RightProofBracket"
    | RightRoundBracket ->
        "RightRoundBracket"
    | RightSmallProofBracket ->
        "RightSmallProofBracket"
    | Semicolon ->
        "Semicolon"
    | SingleQuote ->
        "SingleQuote"
    | WhiteSpace ->
        "WhiteSpace"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_goto_expression_option : type  ttv_stack. ttv_stack -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _v ->
      MenhirBox_expression_option _v
  
  let rec _menhir_run_01 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_PrefixIdentifier1 (_menhir_stack, _menhir_s, _v) in
      let _menhir_s = MenhirState01 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PrefixIdentifier1 _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PrefixIdentifier0 _v ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LeftRoundBracket ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Identifier _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_02 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_PrefixIdentifier0 (_menhir_stack, _menhir_s, _v) in
      let _menhir_s = MenhirState02 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PrefixIdentifier1 _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PrefixIdentifier0 _v ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LeftRoundBracket ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Identifier _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_03 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RightRoundBracket ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_1, _2) = ((), ()) in
          let _v = _menhir_action_31 _1 _2 in
          _menhir_goto_isolated_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PrefixIdentifier1 _v ->
          let _menhir_stack = MenhirCell1_LeftRoundBracket (_menhir_stack, _menhir_s) in
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState03
      | PrefixIdentifier0 _v ->
          let _menhir_stack = MenhirCell1_LeftRoundBracket (_menhir_stack, _menhir_s) in
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState03
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_LeftRoundBracket (_menhir_stack, _menhir_s) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState03
      | Identifier _v ->
          let _menhir_stack = MenhirCell1_LeftRoundBracket (_menhir_stack, _menhir_s) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState03
      | _ ->
          _eRR ()
  
  and _menhir_goto_isolated_expression : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _1 = _v in
      let _v = _menhir_action_01 _1 in
      _menhir_goto_applied_to_bracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_applied_to_bracketized_expression : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState00 ->
          _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState01 ->
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState02 ->
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState10 ->
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState26 ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState34 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState28 ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState30 ->
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState23 ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState20 ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState03 ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState41 ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState38 ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState15 ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState12 ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_53 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | NewLine ->
          let (_2, e) = ((), _v) in
          let _v = _menhir_action_26 _2 e in
          _menhir_goto_expression_option _menhir_stack _v
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixRightIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | InfixLeftIdentifier1 _v_2 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2
      | InfixLeftIdentifier0 _v_3 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3
      | EndOfFile ->
          let (_2, e) = ((), _v) in
          let _v = _menhir_action_28 _2 e in
          _menhir_goto_expression_option _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_15 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RightRoundBracket ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, m) = _menhir_stack in
          let (_1, _2) = ((), ()) in
          let _v = _menhir_action_02 _1 _2 m in
          _menhir_goto_applied_to_bracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PrefixIdentifier1 _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState15
      | PrefixIdentifier0 _v ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState15
      | LeftRoundBracket ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
      | Identifier _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState15
      | _ ->
          _eRR ()
  
  and _menhir_run_05 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let i = _v in
      let _v = _menhir_action_30 i in
      _menhir_goto_isolated_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_20 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _menhir_stack = MenhirCell0_InfixRightIdentifier1 (_menhir_stack, _v) in
      let _menhir_s = MenhirState20 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PrefixIdentifier1 _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PrefixIdentifier0 _v ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LeftRoundBracket ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Identifier _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_26 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _menhir_stack = MenhirCell0_InfixRightIdentifier0 (_menhir_stack, _v) in
      let _menhir_s = MenhirState26 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PrefixIdentifier1 _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PrefixIdentifier0 _v ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LeftRoundBracket ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Identifier _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_23 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _menhir_stack = MenhirCell0_InfixLeftIdentifier1 (_menhir_stack, _v) in
      let _menhir_s = MenhirState23 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PrefixIdentifier1 _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PrefixIdentifier0 _v ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LeftRoundBracket ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Identifier _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_34 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _menhir_stack = MenhirCell0_InfixLeftIdentifier0 (_menhir_stack, _v) in
      let _menhir_s = MenhirState34 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PrefixIdentifier1 _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PrefixIdentifier0 _v ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LeftRoundBracket ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Identifier _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_46 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_PrefixIdentifier1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixLeftIdentifier1 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma | EndOfFile | InfixLeftIdentifier0 _ | InfixRightIdentifier0 _ | NewLine | RightRoundBracket ->
          let MenhirCell1_PrefixIdentifier1 (_menhir_stack, _menhir_s, i) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_22 e i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_applied_to_unbracketized_expression : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState00 ->
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState01 ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState02 ->
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState34 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState30 ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState28 ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState26 ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState23 ->
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState20 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState12 ->
          _menhir_run_13 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState10 ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState41 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState38 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState15 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState03 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_50 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | NewLine ->
          let (_2, e) = ((), _v) in
          let _v = _menhir_action_27 _2 e in
          _menhir_goto_expression_option _menhir_stack _v
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixRightIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | InfixLeftIdentifier1 _v_2 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2
      | InfixLeftIdentifier0 _v_3 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3
      | EndOfFile ->
          let (_2, e) = ((), _v) in
          let _v = _menhir_action_29 _2 e in
          _menhir_goto_expression_option _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_10 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _menhir_stack = MenhirCell0_InfixRightIdentifier1 (_menhir_stack, _v) in
      let _menhir_s = MenhirState10 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PrefixIdentifier1 _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PrefixIdentifier0 _v ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LeftRoundBracket ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Identifier _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_28 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _menhir_stack = MenhirCell0_InfixRightIdentifier0 (_menhir_stack, _v) in
      let _menhir_s = MenhirState28 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PrefixIdentifier1 _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PrefixIdentifier0 _v ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LeftRoundBracket ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Identifier _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_12 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _menhir_stack = MenhirCell0_InfixLeftIdentifier1 (_menhir_stack, _v) in
      let _menhir_s = MenhirState12 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PrefixIdentifier1 _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PrefixIdentifier0 _v ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LeftRoundBracket ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Identifier _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_30 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _menhir_stack = MenhirCell0_InfixLeftIdentifier0 (_menhir_stack, _v) in
      let _menhir_s = MenhirState30 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PrefixIdentifier1 _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PrefixIdentifier0 _v ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LeftRoundBracket ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Identifier _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_45 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_PrefixIdentifier1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixLeftIdentifier1 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma | EndOfFile | InfixLeftIdentifier0 _ | InfixRightIdentifier0 _ | NewLine | RightRoundBracket ->
          let MenhirCell1_PrefixIdentifier1 (_menhir_stack, _menhir_s, i) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_23 e i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_43 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_PrefixIdentifier0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixRightIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | InfixLeftIdentifier1 _v_2 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2
      | InfixLeftIdentifier0 _v_3 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3
      | Comma | EndOfFile | NewLine | RightRoundBracket ->
          let MenhirCell1_PrefixIdentifier0 (_menhir_stack, _menhir_s, i) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_21 e i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_35 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixLeftIdentifier0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixLeftIdentifier1 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma | EndOfFile | InfixLeftIdentifier0 _ | InfixRightIdentifier0 _ | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixLeftIdentifier0 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_07 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_31 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixLeftIdentifier0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixLeftIdentifier1 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma | EndOfFile | InfixLeftIdentifier0 _ | InfixRightIdentifier0 _ | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixLeftIdentifier0 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_15 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_29 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixRightIdentifier0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixRightIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | InfixLeftIdentifier1 _v_2 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2
      | InfixLeftIdentifier0 _v_3 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3
      | Comma | EndOfFile | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixRightIdentifier0 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_13 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_27 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixRightIdentifier0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixRightIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | InfixLeftIdentifier1 _v_2 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2
      | InfixLeftIdentifier0 _v_3 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3
      | Comma | EndOfFile | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixRightIdentifier0 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_05 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_24 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixLeftIdentifier1 -> _ -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_InfixLeftIdentifier1 (_menhir_stack, i) = _menhir_stack in
      let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
      let e_inlined1 = _v in
      let _v = _menhir_action_11 e e_inlined1 i in
      _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_21 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixRightIdentifier1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixLeftIdentifier1 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma | EndOfFile | InfixLeftIdentifier0 _ | InfixRightIdentifier0 _ | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixRightIdentifier1 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_09 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_13 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixLeftIdentifier1 -> _ -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_InfixLeftIdentifier1 (_menhir_stack, i) = _menhir_stack in
      let MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
      let e_inlined1 = _v in
      let _v = _menhir_action_19 e e_inlined1 i in
      _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_11 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixRightIdentifier1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixLeftIdentifier1 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma | EndOfFile | InfixLeftIdentifier0 _ | InfixRightIdentifier0 _ | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixRightIdentifier1 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_17 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_09 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixRightIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | InfixLeftIdentifier1 _v_2 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2
      | InfixLeftIdentifier0 _v_3 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3
      | Comma ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState41 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | PrefixIdentifier1 _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | PrefixIdentifier0 _v ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LeftRoundBracket ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Identifier _v ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | RightRoundBracket ->
          let e = _v in
          let _v = _menhir_action_34 e in
          _menhir_goto_sequence_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_sequence_expression : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState41 ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState38 ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState15 ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState03 ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_42 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
      let (_1, e_inlined1) = ((), _v) in
      let _v = _menhir_action_36 _1 e e_inlined1 in
      _menhir_goto_sequence_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_39 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
      let (_1, e_inlined1) = ((), _v) in
      let _v = _menhir_action_35 _1 e e_inlined1 in
      _menhir_goto_sequence_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_17 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, m) = _menhir_stack in
      let (_1, e, _3) = ((), _v, ()) in
      let _v = _menhir_action_03 _1 _3 e m in
      _menhir_goto_applied_to_bracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_06 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_LeftRoundBracket -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LeftRoundBracket (_menhir_stack, _menhir_s) = _menhir_stack in
      let (_1, e, _3) = ((), _v, ()) in
      let _v = _menhir_action_32 _1 _3 e in
      _menhir_goto_isolated_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_44 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_PrefixIdentifier0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixRightIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | InfixLeftIdentifier1 _v_2 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2
      | InfixLeftIdentifier0 _v_3 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3
      | Comma | EndOfFile | NewLine | RightRoundBracket ->
          let MenhirCell1_PrefixIdentifier0 (_menhir_stack, _menhir_s, i) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_20 e i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_40 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixRightIdentifier1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixLeftIdentifier1 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma | EndOfFile | InfixLeftIdentifier0 _ | InfixRightIdentifier0 _ | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixRightIdentifier1 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_16 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_37 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixRightIdentifier0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixRightIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | InfixLeftIdentifier1 _v_2 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2
      | InfixLeftIdentifier0 _v_3 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3
      | Comma | EndOfFile | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixRightIdentifier0 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_04 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_36 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixLeftIdentifier0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixLeftIdentifier1 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma | EndOfFile | InfixLeftIdentifier0 _ | InfixRightIdentifier0 _ | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixLeftIdentifier0 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_06 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_33 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixRightIdentifier0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixRightIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | InfixLeftIdentifier1 _v_2 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2
      | InfixLeftIdentifier0 _v_3 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3
      | Comma | EndOfFile | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixRightIdentifier0 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_12 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_32 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixLeftIdentifier0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixLeftIdentifier1 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma | EndOfFile | InfixLeftIdentifier0 _ | InfixRightIdentifier0 _ | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixLeftIdentifier0 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_14 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_25 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixLeftIdentifier1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Comma | EndOfFile | InfixLeftIdentifier0 _ | InfixLeftIdentifier1 _ | InfixRightIdentifier0 _ | InfixRightIdentifier1 _ | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixLeftIdentifier1 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_10 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_22 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixRightIdentifier1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixLeftIdentifier1 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma | EndOfFile | InfixLeftIdentifier0 _ | InfixRightIdentifier0 _ | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixRightIdentifier1 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_08 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_19 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixRightIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixRightIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | InfixLeftIdentifier1 _v_2 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2
      | InfixLeftIdentifier0 _v_3 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3
      | Comma ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState38 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | PrefixIdentifier1 _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | PrefixIdentifier0 _v ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LeftRoundBracket ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Identifier _v ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | RightRoundBracket ->
          let e = _v in
          let _v = _menhir_action_33 e in
          _menhir_goto_sequence_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_14 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixLeftIdentifier1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Comma | EndOfFile | InfixLeftIdentifier0 _ | InfixLeftIdentifier1 _ | InfixRightIdentifier0 _ | InfixRightIdentifier1 _ | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixLeftIdentifier1 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_18 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  let _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PrefixIdentifier1 _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00
      | PrefixIdentifier0 _v ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00
      | NewLine ->
          let _1 = () in
          let _v = _menhir_action_24 _1 in
          _menhir_goto_expression_option _menhir_stack _v
      | LeftRoundBracket ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | Identifier _v ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00
      | EndOfFile ->
          let _1 = () in
          let _v = _menhir_action_25 _1 in
          _menhir_goto_expression_option _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let expression_option =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_expression_option v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
