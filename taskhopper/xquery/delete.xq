let $id := request:get-parameter("id", "")

let $deletes := for $task in document("linkedgov-meta/taskhopper/tasks.xml")/linkedgov-taskhopper/task[@id=$id]
  where string(number($id)) != "NaN"
  return update delete $task

return <rsp> {
for $task in document("linkedgov-meta/taskhopper/tasks.xml")/linkedgov-taskhopper/task[@id=$id]
  return <li>{$task}</li>
}
</rsp>
