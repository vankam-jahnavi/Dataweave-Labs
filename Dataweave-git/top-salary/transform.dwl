%dw 2.0
output application/json skipNullOn = 'everywhere'
---
payload groupBy ((item, index) -> item.dept) pluck ((value, key, index) -> {
    dept : (key),
    top : (value orderBy ($.salary))[-1 to -2].name
} )



/*
[
  {
    "dept": "IT",
    "top": [
      "A",
      "C"
    ]
  },
  {
    "dept": "HR",
    "top": [
      "E",
      "D"
    ]
  }
]
*/
