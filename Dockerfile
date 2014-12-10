FROM stackbrew/ubuntu:14.04
MAINTAINER Harris Kirk "hw.kirka@gmail.com"

# 
# Build a machine image for building software
#
RUN apt-get update && apt-get clean
RUN apt-get install -q -y openjdk-7-jre-headless && apt-get clean
RUN apt-get install git
ADD http://mirrors.jenkins-ci.org/war/1.590/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

#ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
CMD [""]
