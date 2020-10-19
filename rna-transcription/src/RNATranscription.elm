module RNATranscription exposing (toRNA)


toRNA : String -> Result String String
toRNA dna =
    let
        transcript : Char -> Result String Char
        transcript nucleotid =
            case nucleotid of
            'G' -> Ok 'C'
            'C' -> Ok 'G'
            'T' -> Ok 'A'
            'A' -> Ok 'U'
            c -> Err ("Invalid input" ++ String.fromChar c)
    in
      case String.uncons dna of
        Nothing -> Ok ""
        Just (head, tail) ->
            Result.map2 String.cons (transcript head) (toRNA tail)
