%dw 2.0
output application/json
---
(payload groupBy ((item, index) -> item.contact)) mapObject ((value, key, index) -> {
    contact : key,
    phone1 : value.phone[0],
    phone2 : value.phone[1]
})