%dw 2.0
output application/json
---
//(payload.Reverse splitBy  ' ' reduce ($ ++ $$)) 
(payload.Reverse splitBy(' '))[-1 to 0] joinBy  ' '