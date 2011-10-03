for $task in /linkedgov-taskhopper/task
let $id := $task/@task-id
return string($id)
