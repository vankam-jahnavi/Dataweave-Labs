%dw 2.0
output application/json
---
(payload orderBy ((value, key) -> key) pluck ((value, key, index) -> {
    (key) : value
})) reduce ($++$$)
