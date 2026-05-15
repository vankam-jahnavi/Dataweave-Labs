%dw 2.0
output application/json
import * from dw::core::Strings
---  
payload groupBy ((item, index) -> (item.date as Date).month)
mapObject ((value, key, index) -> {
    (key) : value reduce ((item, accumulator=0) -> item.amount + accumulator)
})

