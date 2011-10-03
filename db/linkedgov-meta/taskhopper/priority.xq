let $tasks :=   for $task in collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper/task
  order by $task/@priority, util:random()
  return $task

return <rsp>{$tasks}</rsp>
