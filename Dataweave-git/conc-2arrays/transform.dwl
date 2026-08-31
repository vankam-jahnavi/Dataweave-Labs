%dw 2.0
output application/json
---
payload.store.books map ((item, index) -> {
    id: item.bookId,
    title: item.title,
    price: item.price,
    authors : if((payload.store.authors.bookId[index])==item.bookId) (payload.store.authors.author)[index] else ""
})


/*
[
  {
    "id": 101,
    "title": "world history",
    "price": "19.99",
    "authors": "john doe"
  },
  {
    "id": 202,
    "title": "the great outdoors",
    "price": "15.99",
    "authors": "jane doe"
  }
]
*/