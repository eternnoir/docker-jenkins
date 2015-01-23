#
# Jenkins image with ubuntu
#
# Pull base image.
FROM eternnoir/ubuntu-java:oracle-java8
MAINTAINER Frank Wang "eternnoir@gmail.com"

ENV JENKINS_VERSION latest

RUN apt-get update && apt-get upgrade 
ADD http://mirrors.jenkins-ci.org/war/$JENKINS_VERSION/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

VOLUME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
CMD [""]
