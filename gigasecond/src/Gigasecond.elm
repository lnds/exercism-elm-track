module Gigasecond exposing (add)

import Time

add : Time.Posix -> Time.Posix
add timestamp =
    let
        ms = Time.posixToMillis timestamp
        new = ms + 1000000000000
    in
        Time.millisToPosix new
