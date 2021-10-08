#!/bin/bash

crumb=$(curl -u "sai:2123" -s 'http://192.168.1.3:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
# curl -u "sai:2123" -H "$crumb" -X POST http://192.168.1.3:8080/job/env/build?delay=0sec  # --> without parameter's
curl -u "sai:2123" -H "$crumb" -X POST  http://192.168.1.3:8080/job/SQL-Backup-to-AWSs3/buildWithParameters?mysql_host=db_host&database=testdb&bucket=guru-mysql-backup # --> with parameters

