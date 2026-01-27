%dw 2.0
output application/json
import * from dw::core::Strings
---
{
    zipCode : (substringBefore((payload.zipCode),"-")) as Number,
    pincode : (substringAfter((payload.pincode),"-")) as Number,
    name : payload.name filter ((chara, index) -> isAlpha(chara))
} 
// name : (flatten(payload.name scan  /[A-Za-z]/) ) joinBy  ''

