#!/bin/bash

mvn clean compile org.sonarsource.scanner.maven:sonar-maven-plugin:sonar \
		-Dsonar.login=$SONAR_TOKEN \
		-Dsonar.projectKey=simplicite-modules-DemoProject \
		-Dsonar.organization=simplicitesoftware \
		-Dsonar.host.url=https://sonarcloud.io \
		-Dsonar.scm.exclusions.disabled=true
exit $?
