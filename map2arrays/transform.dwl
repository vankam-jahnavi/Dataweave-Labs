%dw 2.0
output application/json
---
payload.name map ((item, index) -> [item,payload.marks [index]])
