let read filename =
  let ic : in_channel = In_channel.open_text filename in
  let content : string = In_channel.input_all ic in
  In_channel.close ic;
  content