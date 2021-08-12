#!/bin/bash
systemctl stop tomcat
cd /opt/tomcat/webapps/
#remove previos version of linked files
rm -f /opt/tomcat/webapps/ROOT.war /opt/tomcat/webapps/client.war  /opt/tomcat/webapps/mocks.war

#link newer version of files to Tomcat
ln -s ROOT.war /opt/tomcat/webapps
Ln -s mocks.war /opt/tomcat/webapps
ln -s client.war /opt/tomcat/webapps

#Rotate old builds and files
find /opt/codedeploy-agent/deployment-root/*/* -mmin +60 -exec rm -rf {} \;
