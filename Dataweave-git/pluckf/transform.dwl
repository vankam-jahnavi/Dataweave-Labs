%dw 2.0
output application/json
var oid = payload groupBy ((item, index) -> item.orderId)
---
{
    orders : oid pluck ((value, key, index) -> {
        orderId : (key),
        "items" : value
    })
}


/*
{
  "orders": [
    {
      "orderId": "A100",
      "items": [
        { "sku": "P1", "qty": 2, "price": 10 },
        { "sku": "P2", "qty": 1, "price": 25 }
      ]
    },
    {
      "orderId": "A101",
      "items": [
        { "sku": "P3", "qty": 5, "price": 4 }
      ]
    }
  ]
}
*/
