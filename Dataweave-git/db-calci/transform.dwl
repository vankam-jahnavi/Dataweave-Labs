%dw 2.0
output application/json
var pers = (now() as Date).year
import * from dw::core::Strings
---
payload map ((item, index) -> {
    name : item.name,
    nextBirthday: if (((now() as Date).month - item.dob.month) > 0 ) (pers + 1 ++ "-" ++ (item.dob substringAfter  "-"))   else if (((now() as Date).month - item.dob.month) < 0 ) (pers ++ "-" ++ (item.dob substringAfter  "-")) else (pers  ++ "-" ++ (item.dob substringAfter  "-")),
   
}) map ((item1, index) -> item1 ++ {daysLeft : daysBetween(now() as Date, item1.nextBirthday)})
 
 
// [
//   { "name": "Ravi", "nextBirthday": "2027-05-20", "daysLeft": 233 },
//   { "name": "Sita", "nextBirthday": "2026-10-15", "daysLeft": 16 },
//   { "name": "Anu",  "nextBirthday": "2026-09-29", "daysLeft": 0 }
// ]