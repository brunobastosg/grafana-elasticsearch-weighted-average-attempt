#!/bin/sh

curl -XPUT "http://elasticsearch:9200/grades" --user elastic:elastic@123 -H 'Content-Type: application/json' -d'
{
  "settings": {
    "index": {
      "number_of_shards": 1,
      "number_of_replicas": 0
    }
  },
  "mappings": {
    "properties": {
      "date": {
        "type": "date"
      },
      "grade": {
        "type": "float"
      },
      "studentId": {
        "type": "integer"
      },
      "studentName": {
        "type": "keyword"
      },
      "subjectId": {
        "type": "integer"
      },
      "subjectName": {
        "type": "keyword"
      },
      "weight": {
        "type": "integer"
      }
    }
  }
}
'
