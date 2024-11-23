FROM ubuntu

LABEL maintainer="cloudspace"

RUN apt -y update && apt clean all

RUN apt -y install apache2 

COPY index.html /var/www/html

EXPOSE 80

# start httpd at container runtime
ENTRYPOINT [ "/usr/sbin/httpd" ]

# Run entrypoint in the background
CMD [ "-D","FOREGROUND" ]
