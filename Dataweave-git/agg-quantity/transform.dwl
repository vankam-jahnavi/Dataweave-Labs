%dw 2.0
output application/json
var rem = payload map ({
    item : $.item,
    quantity : $.quantity mod 15 
} )
---
payload map ((item, index) -> (1 to (item.quantity/15 )) map ((item1, index) -> {
    item : item.item,
    quantity : 15
})++[rem[index]]) 