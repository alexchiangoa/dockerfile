docker run -d -p 8080:8080 -v /Users/alex/Documents/tomcat/webapps:/apache-tomcat-8.0.38/webapps \
                           -v /Users/alex/Documents/tomcat/logs:/apache-tomcat-8.0.38/logs \
                           -v /Users/alex/Documents/etc/tomcat/conf:/apache-tomcat-8.0.38/conf \
                           --link mysql --name pglivetomcat pglivetomcat:80
