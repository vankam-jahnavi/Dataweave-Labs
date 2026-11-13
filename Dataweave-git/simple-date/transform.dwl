%dw 2.0
output application/json
---
payload as Date {format: "yyyy-dd-MM"} as String {format: "dd-MMM-yyyy"}





//"11-Nov-2026"
