%dw 2.0
output application/csv header = false, separator = "|"
---
((payload filter ((item, index) -> item.age > 18)) orderBy ((item, index) -> item.age))

/*
Jane Smith|25|Los Angeles
John Doe|29|New York
John Doe|30|New York
*/