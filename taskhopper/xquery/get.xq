let $id := request:get-parameter("id", "1")
return
<rsp>
{
  for $task in collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper/task[@id=$id]
  return $task
}
</rsp>
