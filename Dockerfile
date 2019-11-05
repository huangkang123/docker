FROM centos
RUN yum install nginx -y
RUN yum install httpd -y
COPY index.html /var