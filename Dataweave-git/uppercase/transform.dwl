%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> {
    (upper(key)) : if(value is Object)(value mapObject ((value1, key1, index) -> { (upper(key1)):upper(value1)}))  else if(value is Array)(value map ((item, index) -> upper(item) ))  else if(value is String)(upper(value))  else ""
})