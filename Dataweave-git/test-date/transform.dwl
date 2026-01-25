%dw 2.0
output application/json
import * from dw::core::Dates
---
payload map((item, index) -> {
id : item.id,
code : item.code,
date_f : item.date_f as Date {format : "dd/MM/yyyy"} as Date {format : "yyyy-MM-dd"},
date_ : item.date_ as Date {format: "dd-MM-yyyy"} as Date {format : "yyyy-MM-dd"}
})