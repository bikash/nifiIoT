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
