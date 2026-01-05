%dw 2.0 
output application/json 
--- 
payload map ((item, index) -> { 
data: { 
"type" : (item."type"), 
"attributes" : { 
items : [{ 
"Id" : item.Id, 
"Name" : item.Name 
}] ++ (item.ChildAccounts) 
} 
} 
}) 
