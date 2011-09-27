let $maxId := max(collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper/task/number(string(@id)))
let $nextId := if (string($maxId) = "NaN") then 1 else $maxId + 1

let $id := request:get-parameter("id", string($nextId))
let $taskType := request:get-parameter("task-type", "")
let $graphUri := request:get-parameter("graph-uri", "")
let $issueUri := request:get-parameter("issue-uri", "")

let $newElem := <task id="{$id}">
    { if ($taskType = "") then () else <task-type href="{$taskType}" /> }
    { if ($graphUri = "") then () else <graph-uri href="{$graphUri}" /> }
    { if ($issueUri = "") then () else <issue-uri href="{$issueUri}" /> }
  </task>

let $updateProcess := for $task in collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper
  return update insert $newElem into /linkedgov-taskhopper

return
<rsp>
  { collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper/task[@id = $id] }
</rsp>
