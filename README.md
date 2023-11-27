# Weighted Average attempt in Grafana using Elasticsearch datasource

This is currently not working.

## Requirements

* Docker

## Running

Run `docker compose up` in the project folder and wait for all containers to be healthy.

The Grafana dashboard should be accessible at http://localhost:3000/d/grades/grades?orgId=1.

You can also browse the Elasticsearch data using Kibana at http://localhost:5601 (`elastic` / `elastic@123`). The index is called `grades`.

## Datasource

The datasource contains grades for three students, Kelly, Mary, and Paul. Each student has four grades for each subject, Math, English, and History. Each subject has its weight.

## Use Case

I need to show the weighted averages for each student in Grafana.

In Elasticsearch, this is as simple as running the following command in [Dev Tools](http://localhost:5601/app/dev_tools#/console):

```
POST /grades/_search
{
  "size": 0,
  "aggs": {
    "students": {
      "terms": {
        "field": "studentName",
        "size": 10
      },
      "aggs": {
        "weighted_grade": {
          "weighted_avg": {
            "value": {
              "field": "grade"
            },
            "weight": {
              "field": "weight"
            }
          }
        }
      }
    }
  }
}
```
