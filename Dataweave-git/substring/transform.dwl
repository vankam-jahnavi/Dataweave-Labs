%dw 2.0
output application/json
import * from dw::core::Strings
---
(payload mapObject ((value, key, index) -> {
    zipCode : substringBefore((payload.zipCode),"-"),
    pincode : substringAfter((payload.pincode),"-"),
    name : payload.name filter ((chara, index) -> isAlpha(chara) )
})) distinctBy ($)