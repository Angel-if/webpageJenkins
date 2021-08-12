#!/bin/bash
systemctl stop tomcat
cd /opt/tomcat/webapps/
#remove previos version of linked files
rm -f /opt/tomcat/webapps/ROOT.war /opt/tomcat/webapps/client.war  /opt/tomcat/webapps/mocks.war

#Rotate old builds and files
find /opt/codedeploy-agent/deployment-root/*/* -mmin +60 -exec rm -rf {} \; 2>/dev/null
find /opt/codedeploy-agent/deployment-root/* -mmin +60 -exec rm -rf {} \; 2>/dev/null
