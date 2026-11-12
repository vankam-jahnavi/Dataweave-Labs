%dw 2.0
output application/json
---
(payload orderBy ((item, index) -> item))[-1 to 0]

/*
[
  "orange",
  "grape",
  "banana",
  "apple"
]
*/