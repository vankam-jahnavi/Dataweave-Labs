%dw 2.0
output application/xml
---
{
    invoice @(id: payload.invoice.id): {
        (payload.invoice.lines map (l) ->
            linesItem @(no: l.lineNo): l.product
        )
    }
}