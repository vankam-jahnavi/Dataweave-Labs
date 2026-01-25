%dw 2.0
output application/json
import * from dw::core::Dates
---
{
    Date : now() as Date {format : "dd/MMMM/yyyy"},
    Time : now() as String {format : "kk:mm:ss a MMMM dd, yyyy"},
    Add2days : now() as Date {format : "dd-MMM-yyyy"} + |P2D|,
    Add2Years : now() as Date {format:"yyyy-MM-dd"} as Date {format :                           "dd-MM-yyyy"} + |P2Y|,
    Add2Months : now() as Date + |P2M|,
    TimeChange : now() as Time {format : "kk:mm:ss a"} + |PT3H2M|
}