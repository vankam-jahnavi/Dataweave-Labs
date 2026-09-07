%dw 2.0
output application/json
---
(flatten(payload flatMap ((item, index) -> item )))distinctBy ($)


//[ 1, 2, 3, 4, 5]