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

/*
payload map ((item, index) -> (1 to (ceil(item.quantity / 15))) map ((item2, index) ->  if((index + 1) < (ceil(item.quantity / 15)))
{
    "item": item.item,
    "quantity": 15
} else {
    "item": item.item,
    "quantity": item.quantity - (15 * ((ceil(item.quantity / 15)) - 1))
}))
*/

/*
%dw 2.0
output application/json
---
payload map ((i1, index) -> (1 to ceil(i1.quantity/15)) map ((i2, index) -> {
    item: i1.item,
    quantity: if(i2*15 > i1.quantity) i1.quantity mod 15 else 15
}))
 
*/
