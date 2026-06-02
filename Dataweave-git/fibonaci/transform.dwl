%dw 2.0
output application/json

fun tt(u) =
    if (u == 0) 0
    else if (u == 1) 1
    else tt(u - 1) + tt(u - 2)

---
(0 to payload) map (tt($))

// Alternative approach using reduce:
// ((0 to payload) reduce ((item, acc = [0,1]) ->
//     acc + (acc[-1] + acc[-2])
// )) [0 to payload]