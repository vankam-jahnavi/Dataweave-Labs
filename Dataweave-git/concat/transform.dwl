%dw 2.0
output application/json
---
(payload.message splitBy  " " ) map ((item, index) -> item ++ " " ++ "Jahnavi")

/*
[
    "Hello Jahnavi",
    "world Jahnavi"
]
*/
