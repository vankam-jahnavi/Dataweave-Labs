%dw 2.0
output application/json
import * from dw::core::Strings
---
payload map ((item, index) -> {
    name: item.name,
    "contact": item.email  default item.phone  default "N/A",
    grade :   if (item.score > 80) "A" else if(item.score >50) "B" else "c"
 
})
// [
//   { "name": "Ravi", "contact": "ravi@x.com",  "grade": "A" },
//   { "name": "Sita", "contact": "9999999999",  "grade": "C" },
//   { "name": "Anu",  "contact": "N/A",         "grade": "B" }
// ]