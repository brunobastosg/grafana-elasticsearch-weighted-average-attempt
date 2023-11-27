#!/bin/sh

curl --request PUT \
  --user elastic:elastic@123 \
  --url "http://elasticsearch:9200/_bulk" \
  --header "Content-Type: application/json" \
  --data "
{\"index\":{\"_index\":\"grades\",\"_id\":\"Q1-Student-1-Subject-2\"}}
{\"date\":\"2022-03-31\",\"grade\":10,\"studentId\":1,\"studentName\":\"Kelly\",\"subjectId\":2,\"subjectName\":\"English\",\"weight\":1}
{\"index\":{\"_index\":\"grades\",\"_id\":\"Q2-Student-1-Subject-2\"}}
{\"date\":\"2022-06-30\",\"grade\":10,\"studentId\":1,\"studentName\":\"Kelly\",\"subjectId\":2,\"subjectName\":\"English\",\"weight\":1}
{\"index\":{\"_index\":\"grades\",\"_id\":\"Q3-Student-1-Subject-2\"}}
{\"date\":\"2022-09-30\",\"grade\":10,\"studentId\":1,\"studentName\":\"Kelly\",\"subjectId\":2,\"subjectName\":\"English\",\"weight\":1}
{\"index\":{\"_index\":\"grades\",\"_id\":\"Q4-Student-1-Subject-2\"}}
{\"date\":\"2022-12-31\",\"grade\":10,\"studentId\":1,\"studentName\":\"Kelly\",\"subjectId\":2,\"subjectName\":\"English\",\"weight\":1}
{\"index\":{\"_index\":\"grades\",\"_id\":\"Q1-Student-2-Subject-2\"}}
{\"date\":\"2022-03-31\",\"grade\":7,\"studentId\":2,\"studentName\":\"Mary\",\"subjectId\":2,\"subjectName\":\"English\",\"weight\":1}
{\"index\":{\"_index\":\"grades\",\"_id\":\"Q2-Student-2-Subject-2\"}}
{\"date\":\"2022-06-30\",\"grade\":9,\"studentId\":2,\"studentName\":\"Mary\",\"subjectId\":2,\"subjectName\":\"English\",\"weight\":1}
{\"index\":{\"_index\":\"grades\",\"_id\":\"Q3-Student-2-Subject-2\"}}
{\"date\":\"2022-09-30\",\"grade\":9,\"studentId\":2,\"studentName\":\"Mary\",\"subjectId\":2,\"subjectName\":\"English\",\"weight\":1}
{\"index\":{\"_index\":\"grades\",\"_id\":\"Q4-Student-2-Subject-2\"}}
{\"date\":\"2022-12-31\",\"grade\":8,\"studentId\":2,\"studentName\":\"Mary\",\"subjectId\":2,\"subjectName\":\"English\",\"weight\":1}
{\"index\":{\"_index\":\"grades\",\"_id\":\"Q1-Student-3-Subject-2\"}}
{\"date\":\"2022-03-31\",\"grade\":7,\"studentId\":3,\"studentName\":\"Paul\",\"subjectId\":2,\"subjectName\":\"English\",\"weight\":1}
{\"index\":{\"_index\":\"grades\",\"_id\":\"Q2-Student-3-Subject-2\"}}
{\"date\":\"2022-06-30\",\"grade\":6,\"studentId\":3,\"studentName\":\"Paul\",\"subjectId\":2,\"subjectName\":\"English\",\"weight\":1}
{\"index\":{\"_index\":\"grades\",\"_id\":\"Q3-Student-3-Subject-2\"}}
{\"date\":\"2022-09-30\",\"grade\":7,\"studentId\":3,\"studentName\":\"Paul\",\"subjectId\":2,\"subjectName\":\"English\",\"weight\":1}
{\"index\":{\"_index\":\"grades\",\"_id\":\"Q4-Student-3-Subject-2\"}}
{\"date\":\"2022-12-31\",\"grade\":8,\"studentId\":3,\"studentName\":\"Paul\",\"subjectId\":2,\"subjectName\":\"English\",\"weight\":1}
"
