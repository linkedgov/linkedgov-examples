let $collectionId := request:get-parameter("collection", "dwp-electricity-use")
let $allMatches := collection(fn:concat("linkedgov/", $collectionId))
let $totalMatches := count($allMatches)

return
<rsp count="{$totalMatches}" />
