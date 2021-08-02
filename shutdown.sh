#!/bin/bash
systemctl stop tomcat
rm ROOT.war client.war  mocks.war startup.sh shutdown.sh
