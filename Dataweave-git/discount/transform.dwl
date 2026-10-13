%dw 2.0
output application/json
---
payload.products map ((item, index) -> {
    id: item.id,
    name: item.name,
    category: item.category,
    discountPrice: item.price * (1-((payload.discounts[item.category]default "0%")replace "%" with "")as Number /100),
    withdiscount: payload.discounts[item.category]
})


//DS price = price * (1-ds/100) 



/*
[
  {
    "id": 1,
    "name": "Laptop",
    "category": "Electronics",
    "discountPrice": 1080,
    "withdiscount": "10%"
  },
  {
    "id": 2,
    "name": "Shirt",
    "category": "Apparel",
    "discountPrice": 21.25,
    "withdiscount": "15%"
  },
  {
    "id": 3,
    "name": "Headphones",
    "category": "Electronics",
    "discountPrice": 90,
    "withdiscount": "10%"
  },
  {
    "id": 4,
    "name": "Riders of last Ark",
    "category": "DVD",
    "discountPrice": 23.75,
    "withdiscount": "5%"
  },
  {
    "id": 5,
    "name": "Riders of last Ark",
    "category": "dv",
    "discountPrice": 25,
    "withdiscount": 0
  }
]
*/
