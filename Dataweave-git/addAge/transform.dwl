%dw 2.0
output application/json
var a = [{"id": 1, "age": 25}, {"id": 2, "age": 30}]
---
payload map ((item, index) -> {
    (item),
    age :  (a filter ((item1, index) -> item.id == item1.id)).age[0]
} )

/*
[{"id": 1, "name": "John", "age": 25}, {"id": 2, "name": "Jane", "age": 30}]
*/