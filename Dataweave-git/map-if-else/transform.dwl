%dw 2.0
output application/json
---
payload map ((item, index) -> {
    firstname : (item.name splitBy  ' ')[0],
    lastname : (item.name splitBy  ' ')[1],
    city : (item.city),
    (if(item.pan != null)"pan" else "aadhar") : if(item.pan != null)item.pan else (item.aadhar) 
})