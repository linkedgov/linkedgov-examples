let $type := request:get-parameter("type", "http://linkedgov.org/task/types/spelling-mistake")

let $tasks := for $task in collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper/task
  where $task/task-type/@href = $type
  order by util:random()
  return $task

return
<rsp>
{ subsequence($tasks, 1, 1) }
</rsp>
