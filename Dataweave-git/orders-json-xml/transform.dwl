%dw 2.0
output application/xml
ns o http://shop.example.org/order
---
o#order @(id: payload.order.id): {
  o#customer: payload.order.customer,
  o#items: {
    (payload.order.items map (item) ->
      o#item @(sku: item.sku): item.qty)
  }
}
