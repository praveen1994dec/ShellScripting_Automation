#!/bin/bash
version="1.2.3.4"
for line in $(cat jiraid.txt)
do
curl -X PUT -u "your_atlassian_jira_username:your_atlassian_jira_token" --data '{"update":{"labels":[{"add":"DEMO_NEW"}]}}' -H "Content-Type: application/json" https://singam.atlassian.net/rest/api/3/issue/SA-1
done 
