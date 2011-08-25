let $id := request:get-parameter("id")

for $task in collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper/task[@id=$id]
return update delete $task
