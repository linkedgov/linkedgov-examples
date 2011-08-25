let $maxId := max(collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper/task/number(string(@task-id)))
let $id := request:get-parameter("id", ($maxId + 1))

for $task in collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper
return update insert <task id="{$id}" /> into /linkedgov-taskhopper
