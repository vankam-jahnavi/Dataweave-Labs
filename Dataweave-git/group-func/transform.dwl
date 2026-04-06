%dw 2.0
output application/json
---
payload groupBy ((item, index) -> item.customerId) pluck ((value, key, index) -> {
   customerId : value.customerId[0],
   totalSpend : sum(value.amount),
   orderCount : sizeOf(value)
})
