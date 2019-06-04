FROM tomcat:9-jre11 AS builder

FROM arvasrikanth/story:googlejdk

COPY --from=builder /usr/local/tomcat /usr/local/tomcat

ENV CATALINA_HOME=/usr/local/tomcat
ENV PATH=$CATALINA_HOME/bin:$PATH

CMD ["catalina.sh", "run"]
