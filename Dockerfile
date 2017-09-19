FROM java:8

MAINTAINER Toto toto@toto.com

COPY src /home/root/javahelloworld/src 

WORKDIR /home/root/javahelloworld

RUN mkdir bin
RUN javac -d bin src/HelloWorld.java

ENV FOO bar

RUN apt-get update

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
