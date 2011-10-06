Dir.glob("db/linkedgov/*/**").each do |file|
  target_filename = file.gsub(/\.rdf$/, "")
  puts target_filename
  `curl -H "Content-Type: application/xml" --upload-file #{file} http://localhost:8080/exist/rest/#{target_filename}`
end
`curl -H "Content-Type: application/xml" --upload-file db/linkedgov-meta/taskhopper/tasks.xml http://localhost:8080/exist/db/linkedgov-meta/taskhopper/tasks.xml`
