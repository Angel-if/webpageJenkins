#!/bin/bash
systemctl stop tomcat
cd /opt/tomcat/webapps/
rm -f ROOT.war client.war  mocks.war startup.sh appspec.yml shutdown.sh
rm -rf /opt/codedeploy-agent/deployment-root/deployment-instructions/
