REM should work in CMD
set MAVEN_OPTS=-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5006 %MAVEN_OPTS% -Dmaven.test.skip=true
mvn -o jetty:run
