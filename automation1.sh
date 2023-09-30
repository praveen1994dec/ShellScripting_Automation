#!/bin/sh
CICD=true
WORKSPACE=/opt/
JOB_BASE_NAME=Test_demo
BUILD_NUMBER=10
if [ $CICD = true ]
then
 echo "CI/CD pipe line check"
file="${WORKSPACE}/basic_report.html"
REPORTNAME=${JOB_BASE_NAME}_${BUILD_NUMBER}.Test_demo_10
echo "CICD Check starting"
  if [ -f "$file" ]; then
        echo "testReport file found sending to artifactory"
        #curl -H X-JFrog-Art-Api:Token -T $file https://oneartifactorycloud/artifactory/CICD/Reports/$REPORTNAME.html
   else
   echo "testReport file not found"
  fi
fi
