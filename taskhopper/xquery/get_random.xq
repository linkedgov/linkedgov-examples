let $id := request:get-parameter("id", "1")

let $tasks :=   for $task in collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper/task
  order by util:random()
  return $task

return <rsp>{ subsequence($tasks, 1, 1)  }</rsp>

