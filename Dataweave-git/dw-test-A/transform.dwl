%dw 2.0
output application/json 
---
{
  ReturnMessage : payload.ReturnMessage,
  HasMore : payload.HasMore,
  Project : payload.Project map ((item, index) -> item.Task map ((item1, index) -> {
    ProjectId : item.ProjectId,
    ProjectName : item.ProjectName,
    ProjectNumber : item.ProjectNumber,
    ProjectStatus : item.ProjectStatus,
    ProjectDescription : item.ProjectDescription,
    TaskId : item1.TaskId,
    TaskName : item1.TaskName,
    TaskNumber : item1.TaskNumber,
    TaskWBSLevel : item1.TaskWBSLevel
  }))
}


/*
{ 
  "ReturnMessage": "SUCCESS", 
  "HasMore": true, 
  "Project": [ 
    [ 
      { 
        "ProjectId": 230, 
        "ProjectNumber": "BBD020", 
        "ProjectName": "SUPERVISORY RENEWALS", 
        "ProjectDescription": null, 
        "ProjectStatus": "GRIP6", 
        "Chargeable": true, 
        "TaskId": 1958, 
        "TaskName": "Output Definition", 
        "TaskNumber": "Stage 1", 
        "TaskWBSLevel": 1 
      }, 
      { 
        "ProjectId": 230, 
        "ProjectNumber": "BBD020", 
        "ProjectName": "SUPERVISORY RENEWALS", 
        "ProjectDescription": null, 
        "ProjectStatus": "GRIP6", 
        "Chargeable": true, 
        "TaskId": 1959, 
        "TaskName": "NWR Internal Costs", 
        "TaskNumber": "1.1", 
        "TaskWBSLevel": 2 
      }, 
      { 
        "ProjectId": 230, 
        "ProjectNumber": "BBD020", 
        "ProjectName": "SUPERVISORY RENEWALS", 
        "ProjectDescription": null, 
        "ProjectStatus": "GRIP6", 
        "Chargeable": true, 
        "TaskId": 1960, 
        "TaskName": "Historical Costs", 
        "TaskNumber": "D02101", 
        "TaskWBSLevel": 3 
      } 
    ] 
  ] 
} 


*/
