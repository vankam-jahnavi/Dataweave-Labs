%dw 2.0
output application/xml
---
PatientList @(count : sizeOf(payload.Patients)) : {
    (payload.patients map( (p) ->
        "Patient" @(id : p.id) : {
            Name: p.firstName ++ p.lastName,
Age:p.age
 
        }
    ) )
}
 
// <?xml version='1.0' encoding='UTF-8'?>
// <PatientList count="2">
//   <Patient id="P1">
//     <Name>Ravi Kumar</Name>
//     <Age>34</Age>
//   </Patient>
//   <Patient id="P2">
//     <Name>Sita Devi</Name>
//     <Age>29</Age>
//   </Patient>
// </PatientList>
