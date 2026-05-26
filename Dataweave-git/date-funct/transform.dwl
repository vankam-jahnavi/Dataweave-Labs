%dw 2.0
output application/json
---
now() as Date {format: "dd/MM/yy"} as String {format: "EEEE"}