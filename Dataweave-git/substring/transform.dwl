%dw 2.0
output application/json
import * from dw::core::Strings
---
payload map ((item, index) -> item mapObject ((value, key, index) -> {
    (substringBefore(key, "|")) : substringBefore(value,"|"),
    (substringAfter(key, "|")) : substringAfter (value,"|")
}) )