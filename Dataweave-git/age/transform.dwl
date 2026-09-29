%dw 2.0
output application/json
import * from dw::extension::DataFormat
var db = payload.birthDate.year
---
now().year - db



//(payload.birthDate as Date splitBy "-")[0] as Number