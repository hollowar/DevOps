# comment
# practising Docker commands
FROM ubuntu:16.04
MAINTAINER richardx14 "richard@dicecentre.org"
#RUN apt-get update; apt-get install -y nginx
#RUN echo 'container!' > /var/www/html/index.html
#EXPOSE 80
#
# CMD when container has been launched.  If you use a command after docker run, it overrides this
CMD ["/bin/bash"]
#
# ENTRYPOINT - any params used after docker run get passed as params to the ENTRYPOINT.  Similar to CMD
# WORKDIR - cd
WORKDIR /var/log
#
# ENV env variables.  Persisted into containers that are launched from image
ENV RICHARD richard
#
# USER account, UID, group that containers run from the image will be run by
#
# VOLUME - adds volumes to containers created from image.  Allows access to the containers volumes
VOLUME ["/var/log"]
#
# ADD adds from build env into image
ADD testaddfile /var/log/testaddfile 
#
# COPY add without without decompression.  Will create missing directories
COPY testaddfile /var/log/copyoftestaddfile
COPY testaddfile /test/add/file/testaddfile
#
# LABEL - add metadata
LABEL name="Richard's test label"
#
# ARG - pass build time variables, can set default.  use --build-arg build=buildnumber
ARG build
ARG builduser=user
