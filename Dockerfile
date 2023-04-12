FROM registry.simplicite.io/platform:5.2

# Add the importspec and the modules
ADD --chown=simplicite:simplicite importspec.yml /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/importspec.yml
ADD --chown=simplicite:simplicite Demo           /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/TdfInfra
ADD --chown=simplicite:simplicite DemoAddons     /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/TdfInfraFrontend
ADD --chown=simplicite:simplicite DemoAPIs       /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/TdfInfraHELIOS
ADD --chown=simplicite:simplicite DemoCustomDisp /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/TdfInfraREFACCES
ADD --chown=simplicite:simplicite DemoDashboard  /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/TdfInfraGED
ADD --chown=simplicite:simplicite DemoDSFR       /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/TdfInfraSNOW
ADD --chown=simplicite:simplicite DemoJSLib      /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/TdfInfraBALISE
ADD --chown=simplicite:simplicite DemoMustache   /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/TdfInfraMAXIMO
ADD --chown=simplicite:simplicite DemoStaticSite /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/TdfInfraNEXTGEN
ADD --chown=simplicite:simplicite DemoVueJS      /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/TdfInfraPHENIX
ADD --chown=simplicite:simplicite DemoWebSite    /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/TdfInfraAnomalies

# Remove Git settings from the modules
RUN for MODULE in /usr/local/tomcat/webapps/ROOT/WEB-INF/modules/Demo*; do sed -i '/<mdl_url>/,/<\/mdl_url>/d' $MODULE/$(basename $MODULE).xml; done

# Use non root user
USER simplicite
