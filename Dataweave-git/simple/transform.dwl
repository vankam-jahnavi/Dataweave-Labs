%dw 2.0
output application/json
---
payload map ((item, index) -> {
    fname : (item.name splitBy  " ")[0],
    lname : (item.name splitBy  " ")[1],
    year : (item.Year splitBy  "/")[1],
    (if(item.pan != null)"pan" else "adhar" ): if(item.pan != null)(item.pan) else (item.adhar)
})

/*
[
  {
    "fname": "sambhaji",
    "lname": "mane",
    "Year": "2023",
    "adhar": "1234"
  },
  {
    "fname": "priya",
    "lname": "behera",
    "Year": "2024",
    "pan": "9876"
  }
]
*/