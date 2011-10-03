Dir.glob("db/linkedgov/*/**").each do |file|
  target_filename = file.gsub(/\.rdf$/, "")
  `curl -H "Content-Type: application/xml" --upload-file #{file} http://localhost:8080/exist/rest/#{target_filename}`
end