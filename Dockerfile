FROM java:7u65
MAINTAINER BikashAgrawal<bikash.agrawa@gmail.com>

ADD nifi-0.0.1-SNAPSHOT-bin.tar.gz .

ADD template/logback.xml .
RUN mv -f template/logback.xml ./nifi-0.0.1-SNAPSHOT/conf


VOLUME ["/output", "/flowconf", "/flowrepo",  "/contentrepo", "/databaserepo", "/provenancerepo"]

RUN sed -i 's/\.\/flowfile_repository/\/flowrepo/g' ./nifi-0.0.1-SNAPSHOT/conf/nifi.properties
RUN sed -i 's/\.\/content_repository/\/contentrepo/g' ./nifi-0.0.1-SNAPSHOT/conf/nifi.properties
RUN sed -i 's/\.\/conf\/flow\.xml\.gz/\/flowconf\/flow.xml.gz/' ./nifi-0.0.1-SNAPSHOT/conf/nifi.properties
RUN sed -i 's/\.\/conf\/archive/\/flowconf\/archive/' ./nifi-0.0.1-SNAPSHOT/conf/nifi.properties
RUN sed -i 's/\.\/database_repository/\/databaserepo/g' ./nifi-0.0.1-SNAPSHOT/conf/nifi.properties
RUN sed -i 's/\.\/provenance_repository/\/provenancerepo/g' ./nifi-0.0.1-SNAPSHOT/conf/nifi.properties


# web port
EXPOSE 8080

# listen port for web listening processor
EXPOSE 8081

WORKDIR nifi-0.0.1-SNAPSHOT
ENTRYPOINT ["bin/nifi.sh"]