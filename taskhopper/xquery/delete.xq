let $id := request:get-parameter("id", "")

for $task in collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper/task[@id=$id]
  where string(number($id)) != "NaN"
return update delete $task
