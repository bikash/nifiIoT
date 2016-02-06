# nifiIoT

Data Tracking using Apache nifi in IoT, IoE



#Introduction
Dockerfile to build a nifi container image

#Version
Current version: 0.0.1-SNAPSHOT - built from apache nifi commit 4d998c12c95a6e5ce3d66c0d861e75e33b5cf013

#Quick Start
Ensure that your host OS has protections in place such that the port is only open to machines you know about, e.g. with a firewall like iptables (open ports 8080 and 8081 for test purposes))

You can launch the image using the docker command line

docker run -d --name=nifi \
-p 8080:8080 -p 8081:8081 \
-v /tmp/output:/output \
tkurc/nifi

You can view the startup progress using docker logs command

docker logs -f nifi

Point your browser to http://localhost:8080/nifi

The port 8081 is exposed, not for the application but for sampling the use of processors that will listen on ports (such as ListenHTTP). Likewise the `-v /tmp/output:/output' mounts the /tmp/output directory in the host to the data volume /output in the container, to sample the use of processors which can write to the local filesystem (PutFile).


##REFERENCE:
## Learning NiFi

* [xmlking/nifi-examples](https://github.com/xmlking/nifi-examples) - Apache NiFi example flows
* [seanorama/masterclass](https://github.com/seanorama/masterclass) - Materials for various Hadoop & Nifi related workshops
* [aperepel/nifi-workshop](https://github.com/aperepel/nifi-workshop) - A complete custom processor project, for your reference
* [pcgrenier/nifi-examples](https://github.com/pcgrenier/nifi-examples) - Apache Nifi Examples by http://www.nifi.rocks
* [bbende/nifi-example-bundles](https://github.com/bbende/nifi-example-bundles) - Example processor bundles for Apache NiFi
* [abajwa-hw/nifi-network-processor](https://github.com/abajwa-hw/nifi-network-processor) - Sample custom Nifi processor to process tcpdump

## Blogs, Blog Posts & Presentations
* [Apache NiFi Blog](https://blogs.apache.org/nifi/)
* [nifi.rocks](http://www.nifi.rocks)
* [Richard's Tech Notes](https://richardstechnotes.wordpress.com/category/apache-nifi/)
* [Monitoring An S3 Bucket in Apache NiFi](https://adamlamar.github.io/2016-01-30-monitoring-an-s3-bucket-in-apache-nifi/)
* [IoT streaming with MQTT and Apache NiFi](https://richardstechnotes.wordpress.com/2015/12/26/iot-streaming-with-mqtt-and-apache-nifi/)
* [Building Data Pipelines for Solr with Apache NiFi](http://www.slideshare.net/BryanBende/building-data-pipelines-for-solr-with-apache-nifi)
* [Using Apache Nifi to Stream Live Twitter Feeds to Hadoop](http://nedsblog.com/2015/09/02/using-apache-nifi-to-stream-live-twitter-feeds-to-hadoop/)
* [Creating a Limited Failure Loop in NiFi](https://kisstechdocs.wordpress.com/2015/01/15/creating-a-limited-failure-loop-in-nifi/)
* [Update NiFi Flow On-the-fly via API](https://community.hortonworks.com/articles/3160/update-nifi-flow-on-the-fly-via-api.html)

