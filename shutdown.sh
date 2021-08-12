#!/bin/bash
systemctl stop tomcat
cd /opt/tomcat/webapps/

#remove previos version of linked files
#rm -f ROOT.war client.war mocks.war startup.sh shutdown.sh appspec.yml

#Rotate old builds and files
find /opt/codedeploy-agent/deployment-root/*/* -mmin +60 -exec rm -rf {} \; 2>/dev/null
find /opt/codedeploy-agent/deployment-root/* -mmin +60 -exec rm -rf {} \; 2>/dev/null
