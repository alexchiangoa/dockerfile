# =============================================================================
# alex chiang
#
# CentOS7, apache-tomcat-8.0.38, jre-7u80-linux-x64 
# =============================================================================

FROM centos:7
MAINTAINER alexchiangoa

# -----------------------------------------------------------------------------
# install jre
# -----------------------------------------------------------------------------

#tar.gz檔ADD進去 Image 時會順便自動解壓縮
ADD  jre-7u80-linux-x64.tar.gz /usr/local/jre


# -----------------------------------------------------------------------------
# jre setting  /etc/profile  
# -----------------------------------------------------------------------------

RUN {\ 
    echo ''; \
    echo $'export JAVA_HOME=/usr/local/jre/jre1.7.0_80'; \
    echo $'export JAVA_BIN=$JAVA_HOME/bin'; \
    echo $'export PATH=$PATH:$JAVA_HOME/bin'; \
    echo $'export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar'; \
    echo $"export JAVA_OPTS='-server -Xms1400M -Xmx1400M -Xss512k -XX:+AggressiveOpts -XX:+UseBiasedLocking -XX:PermSize=128M -XX:MaxPermSize=256M -XX:+DisableExplicitGC -XX:MaxTenuringThreshold=31 -XX:+UseConcMarkSweepGC -XX:+UseParNewGC  -XX:+CMSParallelRemarkEnabled -XX:+UseCMSCompactAtFullCollection -XX:LargePageSizeInBytes=128m  -XX:+UseFastAccessorMethods -XX:+UseCMSInitiatingOccupancyOnly -Djava.awt.headless=true '"; \
    echo $'systemctl stop firewalld'; \
    } >> /etc/profile


# -----------------------------------------------------------------------------
# install tomcat 改在裡面解壓縮
# -----------------------------------------------------------------------------

COPY apache-tomcat-8.0.38.tar.gz /

RUN tar zxvf apache-tomcat-8.0.38.tar.gz

# -----------------------------------------------------------------------------
# tomcat environment
# -----------------------------------------------------------------------------

ENV JAVA_HOME=/usr/local/jre/jre1.7.0_80

ENV PATH=$PATH:/usr/local/jre/jre1.7.0_80/bin

# -----------------------------------------------------------------------------
# tomcat port
# -----------------------------------------------------------------------------

EXPOSE 8080

CMD	["/apache-tomcat-8.0.38/bin/catalina.sh","run"]

