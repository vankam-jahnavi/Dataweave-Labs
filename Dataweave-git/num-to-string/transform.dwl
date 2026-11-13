%dw 2.0
output application/json
---
payload map ((item, index) -> item as String)

/*
[
"1", "2", "3", "4", "5"
]
*/
