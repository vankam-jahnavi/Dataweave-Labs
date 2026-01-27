%dw 2.0
output application/json
---
(payload filter ((item, index) -> item.age < 30) map ((item1, index) -> item1-"firstName" mapObject ((value, key, index) -> {
    (upper(key)) : value,
    STATUS : if(item1.age < 30)"Active" else "Inactive"
})distinctBy ($ )
)) 