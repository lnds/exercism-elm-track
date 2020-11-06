module Etl exposing (transform)

import Dict exposing (Dict)

flatten : ( Int, List String ) -> List ( String, Int )
flatten ( i, list ) =
    List.map (\str -> ( String.toLower str, i )) list


transform : Dict Int (List String) -> Dict String Int
transform input =
    Dict.toList input
        |> List.concatMap flatten
        |> Dict.fromList

