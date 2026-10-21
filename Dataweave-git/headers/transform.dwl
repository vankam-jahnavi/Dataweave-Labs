%dw 2.0
output application/json
---
payload.csv splitBy  "\n" map ((item, index) -> payload.headers map ((item1, index1) -> {
    (item1) : (item splitBy  ",")[index1]
})  reduce ($$ ++ $))


/*
[
  {
    "AGE": "20",
    "NAME": "john",
    "ID": "1"
  },
  {
    "AGE": "21",
    "NAME": "sena",
    "ID": "2"
  }
]
*/
