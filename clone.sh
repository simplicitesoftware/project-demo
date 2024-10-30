#!/bin/bash

[ ! -d Demo ] &&     git clone --depth 1 --single-branch --branch=v6 git@github.com:simplicitesoftware/module-demo.git      Demo
[ ! -d DemoAPIs ] && git clone --depth 1 --single-branch --branch=v6 git@github.com:simplicitesoftware/module-demo-apis.git DemoAPIs

exit 0
