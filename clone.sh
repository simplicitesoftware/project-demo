#!/bin/bash

[ ! -d Demo ] &&           git clone --depth 1 --single-branch --branch=v6 git@github.com:simplicitesoftware/module-demo.git                    Demo
[ ! -d DemoAPIs ] &&       git clone --depth 1 --single-branch --branch=v6 git@github.com:simplicitesoftware/module-demo-apis.git               DemoAPIs
[ ! -d DemoCustomDisp ] && git clone --depth 1 --single-branch --branch=v6 git@github.com:simplicitesoftware/module-demo-custom-disposition.git DemoCustomDisp
[ ! -d DemoDashboard ] &&  git clone --depth 1 --single-branch --branch=v6 git@github.com:simplicitesoftware/module-demo-dashboard.git          DemoDashboard
[ ! -d DemoGuide ] &&      git clone --depth 1 --single-branch --branch=v6 git@github.com:simplicitesoftware/module-demo-guide.git              DemoGuide

exit 0
