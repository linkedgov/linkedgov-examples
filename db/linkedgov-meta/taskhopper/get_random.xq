let $count := count(collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper/task)
let $random := util:random($count)
let $row := collection("linkedgov-meta/taskhopper")/linkedgov-taskhopper/task[position() = $random + 1]

return <rsp> { $row } </rsp>
