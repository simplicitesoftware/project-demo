#!/bin/bash

mvn clean compile org.sonarsource.scanner.maven:sonar-maven-plugin:sonar
exit $?
