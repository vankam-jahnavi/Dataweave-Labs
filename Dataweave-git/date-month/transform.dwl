%dw 2.0
output application/json
import * from dw::core::Strings
import * from dw::core::Dates
---
(payload.date map ((item, index) -> item as Date {format: "yyyy-MM-dd"} as String {format: "MMMM"} ))
groupBy ((item, index) -> item)
mapObject ((value, key, index) -> {
    (key) : sizeOf(value)
})



// {
//   "January": 2,
//   "March": 2,
//   "September": 1
// }