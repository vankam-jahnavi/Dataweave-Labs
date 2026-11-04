%dw 2.0
output application/json 
---
payload map ((item, index) -> {
  (item.name) : {
    (item.options map ((item1, index1) -> {
      (item1.label) : (item1.value)
    }))
  }
})


/*
[ 
  { 
    "size": { 
      "small": 12345, 
      "medium": 23456, 
      "large": 34567 
    } 
  }, 
  { 
    "fabric": { 
      "cotton": 45678, 
      "silk": 56789, 
      "polyester": 67980 
    } 
  } 
] 

*/
