let $nextId := max(collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper/task/number(string(@id))) + 1
let $id := request:get-parameter("id", string($nextId))

for $task in collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper
return update insert <task id="{$id}" /> into /linkedgov-taskhopper
