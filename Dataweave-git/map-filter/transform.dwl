%dw 2.0
output application/json
---
payload filter ((item, index) -> item.age < 30 ) map ((item, index) -> item - "name" - "place" mapObject ((value, key, index) -> {
    (upper(key)) : value
})) 