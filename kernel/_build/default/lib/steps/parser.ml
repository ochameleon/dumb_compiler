open Earley_core

let tok t =
  Earley.terminal (fun x -> if x = t then Some () else None)