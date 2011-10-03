let $id := request:get-parameter("id", "1")

let $tasks := for $task in collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper/task[@id=$id]
  return $task

let $out := if (count($tasks) = 0) then <empty /> else $tasks

return
<rsp>
{
  for $task in $out
    return $task
}
</rsp>
