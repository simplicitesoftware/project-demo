#!/bin/bash

[ ! -d Demo ] &&           git clone --depth 1 git@github.com:simplicitesoftware/module-demo.git                    Demo
[ ! -d DemoAddons ] &&     git clone --depth 1 git@github.com:simplicitesoftware/module-demo-addons.git             DemoAddons
[ ! -d DemoAPIs ] &&       git clone --depth 1 git@github.com:simplicitesoftware/module-demo-apis.git               DemoAPIs
[ ! -d DemoCustomDisp ] && git clone --depth 1 git@github.com:simplicitesoftware/module-demo-custom-disposition.git DemoCustomDisp
[ ! -d DemoDashboard ] &&  git clone --depth 1 git@github.com:simplicitesoftware/module-demo-dashboard.git          DemoDashboard
[ ! -d DemoDSFR ] &&       git clone --depth 1 git@github.com:simplicitesoftware/module-demo-dsfr.git               DemoDSFR
[ ! -d DemoJSLib ] &&      git clone --depth 1 git@github.com:simplicitesoftware/module-demo-jslib.git              DemoJSLib
[ ! -d DemoMustache ] &&   git clone --depth 1 git@github.com:simplicitesoftware/module-demo-mustache.git           DemoMustache
[ ! -d DemoStaticSite ] && git clone --depth 1 git@github.com:simplicitesoftware/module-demo-staticsite.git         DemoStaticSite
[ ! -d DemoVueJS ] &&      git clone --depth 1 git@github.com:simplicitesoftware/module-demo-vuejs.git              DemoVueJS
[ ! -d DemoWebSite ] &&    git clone --depth 1 git@github.com:simplicitesoftware/module-demo-website.git            DemoWebSite

exit 0
