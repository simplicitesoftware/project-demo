FROM registry.simplicite.io/platform:5.2

# Add the importspec and the modules
ADD --chown=simplicite:simplicite importspec.yml /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/importspec.yml
ADD --chown=simplicite:simplicite Demo           /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/Demo
ADD --chown=simplicite:simplicite DemoAddons     /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/DemoAddons
ADD --chown=simplicite:simplicite DemoAPIs       /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/DemoAPIs
ADD --chown=simplicite:simplicite DemoCustomDisp /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/DemoCustomDisp
ADD --chown=simplicite:simplicite DemoDashboard  /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/DemoDashboard
ADD --chown=simplicite:simplicite DemoDSFR       /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/DemoDSFR
ADD --chown=simplicite:simplicite DemoJSLib      /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/DemoJSLib
ADD --chown=simplicite:simplicite DemoMustache   /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/DemoMustache
ADD --chown=simplicite:simplicite DemoStaticSite /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/DemoStaticSite
ADD --chown=simplicite:simplicite DemoVueJS      /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/DemoVueJS
ADD --chown=simplicite:simplicite DemoWebSite    /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/DemoWebSite

# Remove Git settings from the modules
RUN for MODULE in /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/Demo*; do sed -i '/<mdl_url>/,/<\/mdl_url>/d' $MODULE/$(basename $MODULE).xml; done

# Use non root user
USER simplicite
