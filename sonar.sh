#!/bin/bash

mvn clean compile org.sonarsource.scanner.maven:sonar-maven-plugin:sonar \
		-Dsonar.projectKey=simplicite-modules-DemoProjectV6 \
		-Dsonar.organization=simplicitesoftware \
		-Dsonar.host.url=https://sonarcloud.io \
		-Dsonar.scm.exclusions.disabled=true
exit $?
