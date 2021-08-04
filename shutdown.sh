#!/bin/bash
systemctl stop tomcat
cd /opt/tomcat/webapps/
rm -f ROOT.war client.war  mocks.war startup.sh  shutdown.sh appspec.yml clearup.sh

