%dw 2.0
output application/json
---
(payload map ((item, index) -> (keysOf(item)[0]) : keysOf(item)[1])) reduce ($$++$ )


/*
{
"first": "second",
"third": "fourth"
}
*/
