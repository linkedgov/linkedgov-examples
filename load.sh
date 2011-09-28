#!/bin/sh
curl -H "Content-Type: application/xml" --upload-file taskhopper/data/electricityusage_with_error_5.rdf http://localhost:8080/exist/rest/db/linkedgov/dwp-electricity-use/5
curl -H "Content-Type: application/xml" --upload-file taskhopper/data/electricityusage_with_error.rdf http://localhost:8080/exist/rest/db/linkedgov/dwp-electricity-use/1
curl -H "Content-Type: application/xml" --upload-file taskhopper/data/school_with_error.rdf http://localhost:8080/exist/rest/db/linkedgov/schools/1
curl -H "Content-Type: application/xml" --upload-file taskhopper/tasks.xml http://localhost:8080/exist/rest/db/linkedgov-meta/taskhopper/tasks.xml
curl -X POST http://localhost:8180/task/import?url=http%3A%2F%2Flocalhost%3A8080%2Fexist%2Frest%2Fdb%2Flinkedgov%2Fschools%2F1
