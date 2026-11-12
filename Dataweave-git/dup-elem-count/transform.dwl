%dw 2.0
output application/json
---
payload orderBy ((item, index) -> item) groupBy ((item, index) -> item) filterObject ((value, key, index) -> sizeOf(value)>1) mapObject ((value, key, index) -> {
    ((key)as Number) : sizeOf(value)
})





//{1:2,4:3,8:2}