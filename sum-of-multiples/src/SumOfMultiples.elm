module SumOfMultiples exposing (sumOfMultiples)


isMultiple : List Int -> Int -> Bool
isMultiple factors n = 
    List.map (\x -> modBy x n) factors |> List.any (\x -> x == 0)

sumOfMultiples : List Int -> Int -> Int
sumOfMultiples divisors limit =
    List.range 1 (limit - 1) |> List.filter (isMultiple divisors) |> List.sum
