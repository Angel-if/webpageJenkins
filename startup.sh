#!/bin/bash

#link newer version of files to Tomcat
ln -s ROOT.war /opt/tomcat/webapps
ln -s mocks.war /opt/tomcat/webapps
ln -s client.war /opt/tomcat/webapps

sleep 5
systemctl start tomcat
