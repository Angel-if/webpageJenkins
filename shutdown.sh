#!/bin/bash
systemctl stop tomcat
rm -f ROOT.war client.war  mocks.war startup.sh  appspec.yml shutdown.sh
