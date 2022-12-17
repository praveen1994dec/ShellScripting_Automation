#!/bin/bash

version="1.2.3.4"

for line in $(cat jiraid.txt)

do

 curl -X PUT -u "singampallipraveenkumar@gmail.com:XkO2YJUvaof4fsvLAqtM63EA" --data '{"update":{"labels":[{"add":"DEMO_NEW1"}]}}' -H "Content-Type: application/json" https://singam.atlassian.net/rest/api/3/issue/SA-1

 #curl -X PUT -u "singampallipraveenkumar@gmail.com:XkO2YJUvaof4fsvLAqtM63EA" --data {"update":{"comment":[{"add":{"body":"TEST"}}]}}' --header "Content-Type: application/json" https://singam.atlassian.net/rest/api/3/issue/$line

done 

