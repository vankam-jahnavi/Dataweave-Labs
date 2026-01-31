%dw 2.0
output application/json
---
{
    acct_id : payload.test.acct_id[0],
    orderitems : payload.test.orderitems map ((item, index) -> item map ((item1, index) -> {
        client_sku : lower(item1.client_sku),
        units : item1.units
    }))
}