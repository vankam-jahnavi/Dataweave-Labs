%dw 2.0
output application/json
---
payload map ((item, index) -> {
    Name : item.Name,
    "Id's" : (item - "Name")
            pluck ((value, key) -> {
            (key): value
        })
        
})

// payload map ((item, index) -> {
//    Name:item.Name,
//    "Id's":item--(x) pluck ((value, key, index) -> {
//        (key):value
//    })
// })