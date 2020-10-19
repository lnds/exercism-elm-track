module Bob exposing (hey)
import String exposing (endsWith)
import String exposing (isEmpty)




hey : String -> String
hey remark =
    let
        isAsking = String.endsWith "?" (String.trim remark)
        alpha = String.filter Char.isAlpha remark
        isShouting = (String.filter Char.isUpper remark) == alpha && not (String.isEmpty alpha)
        isSayingNothing = remark |> String.trim |> String.isEmpty
        isEmpty = remark |> String.trim |> String.isEmpty
    in
        if isShouting && isAsking then
             "Calm down, I know what I'm doing!"
        else if isShouting then
            "Whoa, chill out!"
        else if isAsking then
            "Sure."
        else if isEmpty then
            "Fine. Be that way!"
        else
            "Whatever."
    
   




