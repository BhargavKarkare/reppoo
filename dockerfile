FROM centos:7
RUN yum install java-openjdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.83/bin/apache-tomcat-9.0.83.tar.gz /opt/
WORKDIR /opt/
RUN tar -xzf /apache-tomcat-9.0.83.tar.gz -C /opt
WORKDIR /opt/apache-tomcat-9.0.83
RUN ls /opt/apache-tomcat-9.0.83
CMD [ "/opt/apache-tomcat-9.0.83/bin/catalina.sh", "run"]