#!/bin/bash
systemctl stop tomcat
cd /opt/tomcat/webapps/
#remove files
rm -f ROOT.war client.war  mocks.war startup.sh appspec.yml shutdown.sh && echo "file has been deleted" > output.txt
rm -rf /opt/codedeploy-agent/deployment-root/deployment-instructions/
