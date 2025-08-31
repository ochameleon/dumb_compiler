
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
    | NewLine
    | LeftSmallProofBracket
    | LeftRoundBracket
    | LeftProofBracket
    | InfixIdentifier1 of (
# 18 "lib/steps/parser_.mly"
       (string)
# 25 "lib/steps/parser_.ml"
  )
    | InfixIdentifier0 of (
# 17 "lib/steps/parser_.mly"
       (string)
# 30 "lib/steps/parser_.ml"
  )
    | Identifier of (
# 16 "lib/steps/parser_.mly"
       (string)
# 35 "lib/steps/parser_.ml"
  )
    | EndOfFile
    | DoubleQuote
    | Comma
    | BadToken
  
end

include MenhirBasics

# 1 "lib/steps/parser_.mly"
  
  open Expression

# 50 "lib/steps/parser_.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_expression_option) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: expression_option. *)

  | MenhirState02 : (('s, _menhir_box_expression_option) _menhir_cell1_LeftRoundBracket, _menhir_box_expression_option) _menhir_state
    (** State 02.
        Stack shape : LeftRoundBracket.
        Start symbol: expression_option. *)

  | MenhirState09 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixIdentifier1, _menhir_box_expression_option) _menhir_state
    (** State 09.
        Stack shape : applied_to_unbracketized_expression InfixIdentifier1.
        Start symbol: expression_option. *)

  | MenhirState12 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression, _menhir_box_expression_option) _menhir_state
    (** State 12.
        Stack shape : applied_to_bracketized_expression.
        Start symbol: expression_option. *)

  | MenhirState17 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixIdentifier1, _menhir_box_expression_option) _menhir_state
    (** State 17.
        Stack shape : applied_to_bracketized_expression InfixIdentifier1.
        Start symbol: expression_option. *)

  | MenhirState20 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixIdentifier0, _menhir_box_expression_option) _menhir_state
    (** State 20.
        Stack shape : applied_to_bracketized_expression InfixIdentifier0.
        Start symbol: expression_option. *)

  | MenhirState22 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixIdentifier0, _menhir_box_expression_option) _menhir_state
    (** State 22.
        Stack shape : applied_to_unbracketized_expression InfixIdentifier0.
        Start symbol: expression_option. *)

  | MenhirState26 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression, _menhir_box_expression_option) _menhir_state
    (** State 26.
        Stack shape : applied_to_bracketized_expression.
        Start symbol: expression_option. *)

  | MenhirState28 : (('s, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression, _menhir_box_expression_option) _menhir_state
    (** State 28.
        Stack shape : applied_to_unbracketized_expression.
        Start symbol: expression_option. *)


and ('s, 'r) _menhir_cell1_applied_to_bracketized_expression = 
  | MenhirCell1_applied_to_bracketized_expression of 's * ('s, 'r) _menhir_state * (Expression.expression)

and ('s, 'r) _menhir_cell1_applied_to_unbracketized_expression = 
  | MenhirCell1_applied_to_unbracketized_expression of 's * ('s, 'r) _menhir_state * (Expression.expression)

and 's _menhir_cell0_InfixIdentifier0 = 
  | MenhirCell0_InfixIdentifier0 of 's * (
# 17 "lib/steps/parser_.mly"
       (string)
# 109 "lib/steps/parser_.ml"
)

and 's _menhir_cell0_InfixIdentifier1 = 
  | MenhirCell0_InfixIdentifier1 of 's * (
# 18 "lib/steps/parser_.mly"
       (string)
# 116 "lib/steps/parser_.ml"
)

and ('s, 'r) _menhir_cell1_LeftRoundBracket = 
  | MenhirCell1_LeftRoundBracket of 's * ('s, 'r) _menhir_state

and _menhir_box_expression_option = 
  | MenhirBox_expression_option of (Expression.expression option) [@@unboxed]

let _menhir_action_01 =
  fun _1 ->
    (_1 : (Expression.expression))

let _menhir_action_02 =
  fun _1 _2 m ->
    let a = 
# 47 "lib/steps/parser_.mly"
                                         ( Void )
# 134 "lib/steps/parser_.ml"
     in
    (
# 56 "lib/steps/parser_.mly"
                                                                       ( Application { morphism = m; argument = a } )
# 139 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_03 =
  fun _1 _3 e m ->
    let a = 
# 48 "lib/steps/parser_.mly"
                                                                  ( e )
# 147 "lib/steps/parser_.ml"
     in
    (
# 56 "lib/steps/parser_.mly"
                                                                       ( Application { morphism = m; argument = a } )
# 152 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_04 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 62 "lib/steps/parser_.mly"
                                           ( e )
# 162 "lib/steps/parser_.ml"
      
    in
    let m = 
# 34 "lib/steps/parser_.mly"
                          ( Identifier i )
# 168 "lib/steps/parser_.ml"
     in
    let a0 = 
# 62 "lib/steps/parser_.mly"
                                           ( e )
# 173 "lib/steps/parser_.ml"
     in
    (
# 59 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 178 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_05 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 63 "lib/steps/parser_.mly"
                                             ( e )
# 188 "lib/steps/parser_.ml"
      
    in
    let m = 
# 34 "lib/steps/parser_.mly"
                          ( Identifier i )
# 194 "lib/steps/parser_.ml"
     in
    let a0 = 
# 62 "lib/steps/parser_.mly"
                                           ( e )
# 199 "lib/steps/parser_.ml"
     in
    (
# 59 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 204 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_06 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 62 "lib/steps/parser_.mly"
                                           ( e )
# 214 "lib/steps/parser_.ml"
      
    in
    let m = 
# 35 "lib/steps/parser_.mly"
                          ( Identifier i )
# 220 "lib/steps/parser_.ml"
     in
    let a0 = 
# 62 "lib/steps/parser_.mly"
                                           ( e )
# 225 "lib/steps/parser_.ml"
     in
    (
# 59 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 230 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_07 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 63 "lib/steps/parser_.mly"
                                             ( e )
# 240 "lib/steps/parser_.ml"
      
    in
    let m = 
# 35 "lib/steps/parser_.mly"
                          ( Identifier i )
# 246 "lib/steps/parser_.ml"
     in
    let a0 = 
# 62 "lib/steps/parser_.mly"
                                           ( e )
# 251 "lib/steps/parser_.ml"
     in
    (
# 59 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 256 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_08 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 62 "lib/steps/parser_.mly"
                                           ( e )
# 266 "lib/steps/parser_.ml"
      
    in
    let m = 
# 34 "lib/steps/parser_.mly"
                          ( Identifier i )
# 272 "lib/steps/parser_.ml"
     in
    let a0 = 
# 63 "lib/steps/parser_.mly"
                                             ( e )
# 277 "lib/steps/parser_.ml"
     in
    (
# 59 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 282 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_09 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 63 "lib/steps/parser_.mly"
                                             ( e )
# 292 "lib/steps/parser_.ml"
      
    in
    let m = 
# 34 "lib/steps/parser_.mly"
                          ( Identifier i )
# 298 "lib/steps/parser_.ml"
     in
    let a0 = 
# 63 "lib/steps/parser_.mly"
                                             ( e )
# 303 "lib/steps/parser_.ml"
     in
    (
# 59 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 308 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_10 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 62 "lib/steps/parser_.mly"
                                           ( e )
# 318 "lib/steps/parser_.ml"
      
    in
    let m = 
# 35 "lib/steps/parser_.mly"
                          ( Identifier i )
# 324 "lib/steps/parser_.ml"
     in
    let a0 = 
# 63 "lib/steps/parser_.mly"
                                             ( e )
# 329 "lib/steps/parser_.ml"
     in
    (
# 59 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 334 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_11 =
  fun e e_inlined1 i ->
    let a1 =
      let e = e_inlined1 in
      
# 63 "lib/steps/parser_.mly"
                                             ( e )
# 344 "lib/steps/parser_.ml"
      
    in
    let m = 
# 35 "lib/steps/parser_.mly"
                          ( Identifier i )
# 350 "lib/steps/parser_.ml"
     in
    let a0 = 
# 63 "lib/steps/parser_.mly"
                                             ( e )
# 355 "lib/steps/parser_.ml"
     in
    (
# 59 "lib/steps/parser_.mly"
                                                                     ( Application { morphism = Application { morphism = m; argument = a0 }; argument = a1 } )
# 360 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_12 =
  fun _1 ->
    (
# 66 "lib/steps/parser_.mly"
             ( None )
# 368 "lib/steps/parser_.ml"
     : (Expression.expression option))

let _menhir_action_13 =
  fun _1 ->
    (
# 67 "lib/steps/parser_.mly"
               ( None )
# 376 "lib/steps/parser_.ml"
     : (Expression.expression option))

let _menhir_action_14 =
  fun _2 e ->
    let e = 
# 62 "lib/steps/parser_.mly"
                                           ( e )
# 384 "lib/steps/parser_.ml"
     in
    (
# 68 "lib/steps/parser_.mly"
                             ( Some e )
# 389 "lib/steps/parser_.ml"
     : (Expression.expression option))

let _menhir_action_15 =
  fun _2 e ->
    let e = 
# 63 "lib/steps/parser_.mly"
                                             ( e )
# 397 "lib/steps/parser_.ml"
     in
    (
# 68 "lib/steps/parser_.mly"
                             ( Some e )
# 402 "lib/steps/parser_.ml"
     : (Expression.expression option))

let _menhir_action_16 =
  fun _2 e ->
    let e = 
# 62 "lib/steps/parser_.mly"
                                           ( e )
# 410 "lib/steps/parser_.ml"
     in
    (
# 69 "lib/steps/parser_.mly"
                               ( Some e )
# 415 "lib/steps/parser_.ml"
     : (Expression.expression option))

let _menhir_action_17 =
  fun _2 e ->
    let e = 
# 63 "lib/steps/parser_.mly"
                                             ( e )
# 423 "lib/steps/parser_.ml"
     in
    (
# 69 "lib/steps/parser_.mly"
                               ( Some e )
# 428 "lib/steps/parser_.ml"
     : (Expression.expression option))

let _menhir_action_18 =
  fun i ->
    (
# 38 "lib/steps/parser_.mly"
                    ( Identifier i )
# 436 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_19 =
  fun _1 _2 ->
    (
# 47 "lib/steps/parser_.mly"
                                         ( Void )
# 444 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_20 =
  fun _1 _3 e ->
    (
# 48 "lib/steps/parser_.mly"
                                                                  ( e )
# 452 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_21 =
  fun e ->
    (
# 62 "lib/steps/parser_.mly"
                                           ( e )
# 460 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_22 =
  fun e ->
    (
# 63 "lib/steps/parser_.mly"
                                             ( e )
# 468 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_23 =
  fun _1 e e_inlined1 ->
    let rest =
      let e = e_inlined1 in
      
# 41 "lib/steps/parser_.mly"
                                    ( e )
# 478 "lib/steps/parser_.ml"
      
    in
    let e = 
# 62 "lib/steps/parser_.mly"
                                           ( e )
# 484 "lib/steps/parser_.ml"
     in
    (
# 44 "lib/steps/parser_.mly"
                                                       ( Concatenation { head = e; tail = rest } )
# 489 "lib/steps/parser_.ml"
     : (Expression.expression))

let _menhir_action_24 =
  fun _1 e e_inlined1 ->
    let rest =
      let e = e_inlined1 in
      
# 41 "lib/steps/parser_.mly"
                                    ( e )
# 499 "lib/steps/parser_.ml"
      
    in
    let e = 
# 63 "lib/steps/parser_.mly"
                                             ( e )
# 505 "lib/steps/parser_.ml"
     in
    (
# 44 "lib/steps/parser_.mly"
                                                       ( Concatenation { head = e; tail = rest } )
# 510 "lib/steps/parser_.ml"
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
    | InfixIdentifier0 _ ->
        "InfixIdentifier0"
    | InfixIdentifier1 _ ->
        "InfixIdentifier1"
    | LeftProofBracket ->
        "LeftProofBracket"
    | LeftRoundBracket ->
        "LeftRoundBracket"
    | LeftSmallProofBracket ->
        "LeftSmallProofBracket"
    | NewLine ->
        "NewLine"
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
  
  let rec _menhir_run_02 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RightRoundBracket ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_1, _2) = ((), ()) in
          let _v = _menhir_action_19 _1 _2 in
          _menhir_goto_isolated_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_LeftRoundBracket (_menhir_stack, _menhir_s) in
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState02
      | Identifier _v ->
          let _menhir_stack = MenhirCell1_LeftRoundBracket (_menhir_stack, _menhir_s) in
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState02
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
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState20 ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState22 ->
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState17 ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState02 ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState28 ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState26 ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState12 ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState09 ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_35 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | NewLine ->
          let (_2, e) = ((), _v) in
          let _v = _menhir_action_14 _2 e in
          _menhir_goto_expression_option _menhir_stack _v
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | EndOfFile ->
          let (_2, e) = ((), _v) in
          let _v = _menhir_action_16 _2 e in
          _menhir_goto_expression_option _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_12 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RightRoundBracket ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, m) = _menhir_stack in
          let (_1, _2) = ((), ()) in
          let _v = _menhir_action_02 _1 _2 m in
          _menhir_goto_applied_to_bracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | LeftRoundBracket ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState12
      | Identifier _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState12
      | _ ->
          _eRR ()
  
  and _menhir_run_04 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let i = _v in
      let _v = _menhir_action_18 i in
      _menhir_goto_isolated_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_17 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _menhir_stack = MenhirCell0_InfixIdentifier1 (_menhir_stack, _v) in
      let _menhir_s = MenhirState17 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Identifier _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_20 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _menhir_stack = MenhirCell0_InfixIdentifier0 (_menhir_stack, _v) in
      let _menhir_s = MenhirState20 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Identifier _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_25 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixIdentifier0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma | EndOfFile | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixIdentifier0 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_04 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_applied_to_unbracketized_expression : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState00 ->
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState22 ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState20 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState17 ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState09 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState28 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState26 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState12 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState02 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_32 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | NewLine ->
          let (_2, e) = ((), _v) in
          let _v = _menhir_action_15 _2 e in
          _menhir_goto_expression_option _menhir_stack _v
      | InfixIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | EndOfFile ->
          let (_2, e) = ((), _v) in
          let _v = _menhir_action_17 _2 e in
          _menhir_goto_expression_option _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_22 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _menhir_stack = MenhirCell0_InfixIdentifier0 (_menhir_stack, _v) in
      let _menhir_s = MenhirState22 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Identifier _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_23 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixIdentifier0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | InfixIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma | EndOfFile | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixIdentifier0 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_09 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_21 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixIdentifier0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | InfixIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma | EndOfFile | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixIdentifier0 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_05 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_18 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixIdentifier1 -> _ -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_InfixIdentifier1 (_menhir_stack, i) = _menhir_stack in
      let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
      let e_inlined1 = _v in
      let _v = _menhir_action_07 e e_inlined1 i in
      _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_10 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixIdentifier1 -> _ -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_InfixIdentifier1 (_menhir_stack, i) = _menhir_stack in
      let MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
      let e_inlined1 = _v in
      let _v = _menhir_action_11 e e_inlined1 i in
      _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_08 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | InfixIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma ->
          let _menhir_stack = MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState28 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LeftRoundBracket ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Identifier _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | RightRoundBracket ->
          let e = _v in
          let _v = _menhir_action_22 e in
          _menhir_goto_sequence_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_sequence_expression : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState28 ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState26 ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState12 ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState02 ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_29 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
      let (_1, e_inlined1) = ((), _v) in
      let _v = _menhir_action_24 _1 e e_inlined1 in
      _menhir_goto_sequence_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_27 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
      let (_1, e_inlined1) = ((), _v) in
      let _v = _menhir_action_23 _1 e e_inlined1 in
      _menhir_goto_sequence_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_14 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, m) = _menhir_stack in
      let (_1, e, _3) = ((), _v, ()) in
      let _v = _menhir_action_03 _1 _3 e m in
      _menhir_goto_applied_to_bracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_05 : type  ttv_stack. (ttv_stack, _menhir_box_expression_option) _menhir_cell1_LeftRoundBracket -> _ -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LeftRoundBracket (_menhir_stack, _menhir_s) = _menhir_stack in
      let (_1, e, _3) = ((), _v, ()) in
      let _v = _menhir_action_20 _1 _3 e in
      _menhir_goto_isolated_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_24 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixIdentifier0 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma | EndOfFile | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixIdentifier0 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_08 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_19 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_bracketized_expression _menhir_cell0_InfixIdentifier1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | Comma | EndOfFile | InfixIdentifier0 _ | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixIdentifier1 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_06 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_16 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | InfixIdentifier0 _v_1 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | Comma ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState26 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LeftRoundBracket ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Identifier _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | RightRoundBracket ->
          let e = _v in
          let _v = _menhir_action_21 e in
          _menhir_goto_sequence_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_11 : type  ttv_stack. ((ttv_stack, _menhir_box_expression_option) _menhir_cell1_applied_to_unbracketized_expression _menhir_cell0_InfixIdentifier1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expression_option) _menhir_state -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LeftRoundBracket ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer
      | InfixIdentifier1 _v_0 ->
          let _menhir_stack = MenhirCell1_applied_to_bracketized_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | Comma | EndOfFile | InfixIdentifier0 _ | NewLine | RightRoundBracket ->
          let MenhirCell0_InfixIdentifier1 (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_applied_to_unbracketized_expression (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let e_inlined1 = _v in
          let _v = _menhir_action_10 e e_inlined1 i in
          _menhir_goto_applied_to_unbracketized_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  let _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_expression_option =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NewLine ->
          let _1 = () in
          let _v = _menhir_action_12 _1 in
          _menhir_goto_expression_option _menhir_stack _v
      | LeftRoundBracket ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | Identifier _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00
      | EndOfFile ->
          let _1 = () in
          let _v = _menhir_action_13 _1 in
          _menhir_goto_expression_option _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let expression_option =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_expression_option v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
