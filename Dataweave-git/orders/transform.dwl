%dw 2.0
output application/json
---
payload.orders flatMap ((item, index) -> item.items map ((item1, index1) -> item1 ++ {orderId : item.orderId}))
 
// [
//   { "orderId": "A100", "customer": "Ravi", "sku": "P1", "qty": 2, "lineTotal": 20 },
//   { "orderId": "A100", "customer": "Ravi", "sku": "P2", "qty": 1, "lineTotal": 25 },
//   { "orderId": "A101", "customer": "Sita", "sku": "P3", "qty": 5, "lineTotal": 20 }
// ]