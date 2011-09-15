let $collectionId := request:get-parameter("collection", "dwp-electricity-use")
let $start:= xs:integer(request:get-parameter("start", "1"))
let $limit := xs:integer(request:get-parameter("limit", "20"))
let $allMatches := collection(fn:concat("linkedgov/", $collectionId))
let $matches := subsequence($allMatches,$start,$limit)

return
<rsp count="{count("linkedgov/dwp-electricity-use")}">
{
for $item in $matches
return
<li>{util:document-name($item)}</li>
}
</rsp>
