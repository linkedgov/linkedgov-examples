let $type := request:get-parameter("type", "spelling-mistake")

let $tasks :=   for $task in collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper/task[@task-type = $type]
  order by util:random()
  return $task

return
<rsp>
{ subsequence($tasks, 1, 1) }
</rsp>
