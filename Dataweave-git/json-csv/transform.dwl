%dw 2.0
output application/csv 
import  * from dw::core::Strings
---
// payload map ((item, index) -> {
//     message1 : (item.message1 splitBy  ',') reduce ($$ ++" "++$),
//     message2 : substringBefore((item.message2),"\n2")
// })

payload map ((item, index) -> item mapObject ((value, key, index) -> {
    // (key) : value replace  /[,\n]/ with ""
    (key) : value remove  "," remove "\n"
}) )

/*
message1,message2
Hello world!,test2
*/