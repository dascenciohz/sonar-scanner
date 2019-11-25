#!/bin/bash

sed -i -e 's~#sonar.host.url=http://localhost:9000~sonar.host.url='${SONARQUBE_URL}'~g' /usr/lib/sonar-scanner/conf/sonar-scanner.properties

/bin/bash