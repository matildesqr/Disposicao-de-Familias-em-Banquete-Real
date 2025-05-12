let validar s = 
  let tam = String.length s in
  if tam < 2 then false 
  else
    (* familia tem de começar com 'H' e termina com 'M' *)
    if s.[0] <> 'H' || s.[tam-1] <> 'M' then false
    else 
      let rec familia i sub_familia =
        if i >= tam then sub_familia = 0 
        else 
          match s.[i] with
            | 'H' ->  familia (i + 1) (sub_familia + 1) 
            | 'M' ->
              if sub_familia = 0 then false(* não dá para fechar *)
              else 
                familia (i + 1) (sub_familia - 1) 
            | 'C' ->
              familia (i + 1) sub_familia
            | 'A' -> (* 'A' tem de estar entre 'C'*)
              if i > 0 && i < tam - 1 && s.[i-1] = 'C' && s.[i+1] = 'C' then 
                familia (i + 1) sub_familia
            else 
              false
            | _ -> false
          in familia 1 1 (* já foi verificado o 'H' *)


let imprimir resultado = 
  if resultado then
    Printf.printf "YES\n"
  else
    Printf.printf "NO\n"
    

let () = 
  let s = read_line() in
  let result = validar s in
  imprimir result
