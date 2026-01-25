%dw 2.0
output application/json
import * from dw::core::Strings
---
{
  payload: payload.payload map (item) ->
    item update {
      case .Account.SSN ->
        "***-**-" ++ substringAfterLast($, "-")
    }
}