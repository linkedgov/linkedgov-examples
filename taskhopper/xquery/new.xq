let $nextId := max(collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper/task/number(string(@id))) + 1
let $id := request:get-parameter("id", string($nextId))
let $taskType := request:get-parameter("task-type", "")
let $graphUri := request:get-parameter("graph-uri", "")
let $issueUri := request:get-parameter("issue-uri", "")

let $newElem := <task id="{$id}">
    { if ($taskType = "") then () else <task-type>{$taskType}</task-type> }
    { if ($graphUri = "") then () else <graph-uri href="{$graphUri}" /> }
    { if ($issueUri = "") then () else <issue-uri href="{$issueUri}" /> }
  </task>

for $task in collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper
return update insert <task id="{$id}" /> into /linkedgov-taskhopper
